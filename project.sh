RED='\e[31m'
CYAN='\e[36m'
GREEN='\e[32m'
printf "${RED}"
figlet -f basic "VU Sports"
Message (){
  printf "${CYAN}"
  echo "===================================="
  echo "||    Select What you want do?    ||"
  echo "===================================="
  printf "${GREEN}"
  echo "0. abort"
  echo "1. build APK development"
  echo "2. build APK staging"
  echo "3. build APK production"
  echo "4. build IPA development"
  echo "5. build IPA staging"
  echo "6. build IPA production"
  echo "7. Generate Additional files"
  read CHOICE
}
operation(){
case "$CHOICE" in
0)
echo "Aborting......."
;;
1)
echo "building APK development"
flutter build apk --release --target ./lib/main_flavours_development.dart --flavor development --dart-define=key="vu@dev*F-J@NcRfU"
;;
2)
echo "building APK staging"
flutter build apk --release --target ./lib/main_flavours_staging.dart --flavor staging
;;
3)
echo "building APK production"
flutter build apk --release --target ./lib/main_flavours_production.dart --flavor production --no-tree-shake-icons --dart-define=key="vu@prd*F-J@NcRfU"
;;
4)
echo "building IPA(iOS APP bundle) development"
flutter build ipa --release --target ./lib/main_flavours_development.dart --flavor development --dart-define=key="vu@dev*F-J@NcRfU"
;;
5)
echo "building IPA(iOS APP bundle) staging"
flutter build ipa --release --target ./lib/main_flavours_staging.dart --flavor staging
;;
6)
echo "building IPA(iOS APP bundle) production"
flutter build ipa --release --target ./lib/main_flavours_production.dart --flavor production
;;
7)
echo "Generating code....."
flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
;;
*)
printf "${RED}"
figlet -f doom "Wrong Input"
Message
operation
;;
esac
}
Message
operation