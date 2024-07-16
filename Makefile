run_all_in_parallel:
	make -j test_Windows_10_edge_latest test_firefox_latest test_Windows_10_chrome_latest
	
test_Windows_10_edge_latest:
	robot  --output NONE --report NONE --log NONE --variable browserName:MicrosoftEdge --variable version:latest --variable ROBOT_BROWSER:Edge --variable platformName:Windows\ 10 Tests/sample_test.robot
test_firefox_latest:
	robot  --output NONE --report NONE --log NONE --variable browserName:Firefox --variable version:latest --variable ROBOT_BROWSER:Firefox --variable platformName:macOS\ Sonoma Tests/sample_test.robot 
test_Windows_10_chrome_latest:
	robot  --output NONE --report NONE --log NONE --variable browserName:Chrome --variable version:latest --variable ROBOT_BROWSER:Chrome --variable platformName:Windows\ 11 Tests/sample_test.robot 
