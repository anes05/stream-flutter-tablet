import 'package:agora/common_widgets/appColors.dart';
import 'package:agora/common_widgets/commonWidgets.dart';
import 'package:agora/screens/questionsPage/bloc/questions_bloc.dart';
import 'package:agora/screens/questionsPage/questionsPage.dart';
import 'package:agora/screens/questionsPage/searchQuestionsPage.dart';
import 'package:agora/screens/questionsPage/widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:broadcaster_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:questions_live/questions_live.dart';


const appId = "de227b5eaaae4840829264c4c448aad9";
const token = "007eJxTYJiVGNSWI6a25dunl5PbLxvtq8++7p+olWC766kDxy75/JsKDCmpRkbmSaapiYmJqSYWJgYWRpZGZibJQGhikZiYYqlcujytIZCRYe/vz8yMDBAI4rMwlKQWlzAwAACYZCEN";
const channel = "test";

@RoutePage()
class LivePage extends StatelessWidget {
  const LivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Live Page"),
      body: const Row(
        children: [
          Expanded(
            flex: 1,
            child: BroadcasterWidget(), // Use a separate widget to encapsulate Broadcaster_app
          ),
          VerticalDivider(
            width: 1,
            color: Colors.grey,
          ),
          Expanded(
            flex: 1,
            /*child: BlocProvider(
              create: (context) =>
              QuestionsBloc()..add(const QuestionsEvent.getAllQuestions()),
              child: BlocBuilder<QuestionsBloc, QuestionsState>(
                builder: (context, state) {
                  return state.when(
                    loadingState: () =>
                    const Center(child: CircularProgressIndicator()),
                    loadedState: (questionsList) {
                      return ListView.builder(
                        itemCount: questionsList.length,
                        itemBuilder: (_, index) {
                          final Questions? questionModel = questionsList[index];
                          return InkWell(
                            onTap: () {
                              print("You pressed on ${questionModel?.question}");
                              showQuestionDialog(context, questionModel!);
                            },
                            splashColor: AppColors.splashColor,
                            highlightColor: AppColors.highlightColor,
                            child: Card(
                              color: AppColors.cardBackground,
                              elevation: 4,
                              shadowColor: AppColors.blue.withOpacity(0.2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(
                                    color: AppColors.borderColor, width: 1),
                              ),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      questionModel?.question ?? '',
                                      style: const TextStyle(
                                        color: AppColors.mainText,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Wrap(
                                      spacing: 8.0,
                                      runSpacing: 4.0,
                                      children: questionModel?.options
                                          ?.map((option) {
                                        final optionMap = option.asMap;
                                        return Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (optionMap['correct'] ==
                                                true)
                                              const Icon(Icons.check,
                                                  color: Colors.green),
                                            const SizedBox(width: 4),
                                            Text(
                                              optionMap['choice'],
                                              style: const TextStyle(
                                                color: AppColors.hintText,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        );
                                      }).toList() ??
                                          [],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    errorState: () {
                      return const Center(
                          child:
                          Text("There was an error loading the list"));
                    },
                  );
                },
              ),
            ),*/
            child: SearchQuestionsPage(),
          ),

        ],
      ),
    );
  }
}

class BroadcasterWidget extends StatefulWidget {
  const BroadcasterWidget({Key? key}) : super(key: key);

  @override
  State<BroadcasterWidget> createState() => _BroadcasterWidgetState();
}

class _BroadcasterWidgetState extends State<BroadcasterWidget> {
  int? _remoteUid;
  bool _localUserJoined = false;
  late RtcEngine _engine;

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  Future<void> initAgora() async {
    await [Permission.microphone, Permission.camera].request();
    _engine = createAgoraRtcEngine();
    await _engine.initialize(const RtcEngineContext(
      appId: appId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));

    _engine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          setState(() {
            _localUserJoined = true;
          });
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          setState(() {
            _remoteUid = remoteUid;
          });
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          setState(() {
            _remoteUid = null;
          });
        },
      ),
    );

    await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine.enableVideo();
    await _engine.startPreview();

    await _engine.joinChannel(
      token: token,
      channelId: channel,
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  Future<void> _dispose() async {
    await _engine.leaveChannel();
    await _engine.release();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _localUserJoined
          ? AgoraVideoView(
        controller: VideoViewController(
          rtcEngine: _engine,
          canvas: const VideoCanvas(uid: 0),
        ),
      )
          : const CircularProgressIndicator(),
    );
  }
}