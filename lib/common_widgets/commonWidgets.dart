import 'package:agora/common_widgets/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
AppBar buildAppBar(String text){
  return AppBar(

    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: AppColors.mainBackground,
        height: 1.0,
      ),
    ),
    title: Text(
      text,
      style: TextStyle(
        color: AppColors.mainText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    centerTitle: true,
  );
}
Widget pageBody(BuildContext context,String imagePath, String title,String subTitle,String buttonName,void Function()? func){
  return Column(
    children: [
      const SizedBox(height: 70.0),
      imageWidget(imagePath,200.w,200.w),
      Text(title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.mainText,
            fontSize: 26.sp,
            fontWeight: FontWeight.w700
        ),
      ),
      Container(
        width:375.w,
        padding: EdgeInsets.only(left: 30.w, right: 30.w,top: 50.h),
        child: Text(subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.hintText,
              fontSize: 14.sp,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      GestureDetector(
        onTap:func,
        child: Container(
          margin: EdgeInsets.only(top:60.h,  left: 25.w, right: 25.w),
          width: 325.w,
          height: 50.h,
          decoration: BoxDecoration(
              color: AppColors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              boxShadow:const [
                BoxShadow(
                    color: AppColors.blue,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0,5)
                )
              ]
          ),
          child: Center(
            child: Text(buttonName,
              style: TextStyle(
                color: AppColors.mainBackground,
                fontSize: 18.sp,
                fontWeight: FontWeight.normal,
              ),),
          ),
        ),
      )
    ],

  );
}
Widget imageWidget(String imagePath, double width, double height) {
  return SizedBox(
      width: width,
      height: height,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      )
  );
}
Widget buildTextField(String hintText, String textStyle,String iconName, void Function(String value)? func){
  return Container(
    width: 325.w,
    height: 50.h,
    margin: EdgeInsets.only(top: 5.h,bottom: 5.h),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
        border: Border.all(color: AppColors.clearGray)
    ),
    child: Row(
      children: [
        Container(
          width: 16.w,
          height: 16.w,
          margin: EdgeInsets.only(left: 15.w),
          child: Image.asset("assets/icons/$iconName.png"),
        ),
        SizedBox(
          width: 270.w,
          height: 50.h,
          child: TextField(
            onChanged: (value)=>func!(value),
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: hintText,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              focusedBorder:const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              hintStyle: const TextStyle(
                  color:AppColors.hintText
              ),

            ),
            style: TextStyle(
                color: AppColors.mainText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: 14.sp
            ),
            autocorrect: false,
            obscureText: textStyle=="password"?true:false,
          ),
        )
      ],
    ),
  );
}
Widget buildLogInAndRegButton(String buttonName,String buttonType, void Function()? func){
  return GestureDetector(
    onTap:func,
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(left: 25.w, right: 25.w,top: buttonType=="login"?30.h:20.h),
      decoration: BoxDecoration(
          color: buttonType=="login"
              ?AppColors.blue
              :AppColors.mainBackground,
          borderRadius: BorderRadius.circular(15),
          //check for registration button border color
          border: Border.all(color: buttonType=="login"
              ?Colors.transparent
              :AppColors.clearGray),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0,1),
                color: Colors.grey.withOpacity(0.80)
            )
          ]
      ),
      child: Center(
        child: Text(
          buttonName, // as a String parameter passed in the function
          style: TextStyle(
            color: (buttonName=="Login" || buttonName=="Sign up")
                ?AppColors.mainText
                :AppColors.mainBackground,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal,
          ),),
      ),
    ),
  );

}

