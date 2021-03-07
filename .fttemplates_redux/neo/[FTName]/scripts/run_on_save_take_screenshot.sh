filename=$1

sleep 1

case $filename in
  "registration_choose_type.dart")
    bash $(pwd)/scripts/compare_screenshots.sh registration_choose_type.png
    # open -a Preview "$(pwd)/test_driver/images/diff/user_info_step_one.png"
    ;;
  "user_info_step_one.dart")
    bash $(pwd)/scripts/compare_screenshots.sh user_info_step_one.png
    # open -a Preview "$(pwd)/test_driver/images/diff/user_info_step_one.png"
    ;;
  "user_info_step_two.dart" | "identification_phone_confirmation_component.dart")
    bash $(pwd)/scripts/compare_screenshots.sh user_info_step_two.png
    # open -a Preview "$(pwd)/test_driver/images/diff/user_info_step_two.png"
    ;;
  # "user_info_step_three.dart")
  #   bash $(pwd)/scripts/compare_screenshots.sh user_info_step_three.png
  #   # open -a Preview "$(pwd)/test_driver/images/diff/user_info_step_two.png"
  #   ;;

    *)
    echo "unknown file: $filename"
    ;;
esac
