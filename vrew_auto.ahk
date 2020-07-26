Run, C:\Users\user\AppData\Local\Programs\vrew\Vrew.exe ; vrew 실행
Sleep, 30000 ; 30초

Send {LWin Down}{Up}{LWin UP} ; 창크기 최대화
Sleep, 5000 ; 5초

Click, 45, 100 ; 새 영상 파일로 시작하기
Sleep, 5000 ; 5초
Send {LWin Down}{Up}{LWin UP} ; 창크기 최대화
Sleep, 5000 ; 5초
Click, 450, 200 ; 클릭
Send, {Enter} ; 최신 영상 선택
Sleep, 5000 ; 5초
Click, 880, 750 ; 한국어 선택
Sleep, 300000 ; 영상 분석 중 5분

Click, 110, 45 ; 홈
Sleep, 5000 ; 5초
Click, 1350, 100 ; 무음 구간 줄이기
Sleep, 5000 ; 5초
Click, 1850, 480 ; 최장 길이 0.1초
Sleep, 5000 ; 5초
Click, 1800, 540 ; 조정하기
Sleep, 5000 ; 5초
Click, 240, 40 ; 자막
Sleep, 5000 ; 5초
Click, 50, 100 ; 자막 사용하지 않기
Sleep, 5000 ; 5초

Click, 40, 45 ; 파일
Sleep, 5000 ; 5초
Click, 480, 100 ; 영상으로 내보내기
Sleep, 5000 ; 5초
Click, 1000, 485 ; 해상도
Sleep, 5000 ; 5초
MouseMove 1000, 680 ; 마우스 이동
Sleep, 5000 ; 5초
Click, WheelDown 10 ; 스크롤
Sleep, 5000 ; 5초
Click, 1000, 680 ; 4k 선택
Sleep, 5000 ; 5초
Click, 1000, 630 ; 화질
Sleep, 5000 ; 5초
Click, 1000, 770 ; 최고화질
Sleep, 5000 ; 5초
Click, 880, 850 ; 내보내기
Sleep, 5000 ; 5초
Send, {Enter}