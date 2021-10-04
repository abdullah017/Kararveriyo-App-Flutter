import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddOptionController extends GetxController {
  RxList<dynamic>? optionList = [].obs;
  TextEditingController optionTextFieldController = TextEditingController();
  TextEditingController titleTextFieldController = TextEditingController();

  addOption() {
    try {
      if (optionTextFieldController.text == "") {
        Get.snackbar(
          "HATA",
          "BOŞ SEÇENEK EKLEYEMEZSİNİZ!",
          snackPosition: SnackPosition.TOP,
        );
      } else {
        optionList!.add(optionTextFieldController.text);
        optionTextFieldController.clear();
      }
    } catch (e) {
      Get.snackbar(
        "HATA",
        "BOŞ SEÇENEK EKLEYEMEZSİNİZ!",
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  deleteOption(index) {
    try {
      if (optionList!.isNotEmpty) {
        optionList!.removeAt(index);
        Get.snackbar(
          "UYARI",
          "SEÇENEK SİLİNDİ",
          colorText: Colors.white,
          barBlur: 25,
          snackPosition: SnackPosition.TOP,
        );
      }
    } catch (e) {
      Get.snackbar(
        "HATA",
        "BİR HATA MEYDANA GELDİ!",
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  nextPage() {
    try {
      if (optionList!.length >= 2 && titleTextFieldController.text.isNotEmpty) {
        Get.toNamed("/",
            arguments: [optionList, titleTextFieldController.text]);
      } else {
        Get.snackbar(
          "HATA",
          "BAŞLIK VEYA EN AZ 2 SEÇENEK EKLEMELİSİNİZ!",
          snackPosition: SnackPosition.TOP,
        );
      }
    } catch (e) {
      Get.snackbar(
        "HATA",
        "BOŞ SEÇENEK EKLEYEMEZSİNİZ!",
        snackPosition: SnackPosition.TOP,
      );
    }
  }
}
