-- Translator: DOSBox Daum Cafe -------------------------------
 English:  http://ykhwong.x-y.net
 Korean:  http://cafe.daum.net/dosbox

 This translation is based on the English version of
 official manual from www.dosbox.com.
----------------------------------------------------------------

DOSBox v0.74 설명서 (www.dosbox.com에서 늘 최신 버전을 이용하십시오)

=====
알림
=====

DOSBox는 이제껏 개인 컴퓨터에 맞춰 만들어진 프로그램들을 언젠가는 모두
실행할 것입니다. 그것이 우리의 바람이지만 아직 다 이루지는 못했습니다.
DOSBox는 이제서야 매우 빠른 컴퓨터에서 낮은 사양의 486 PC에 가깝게 돌아갑니다.
DOSBox는 옛날의 CGA/Tandy/PCjr 게임부터 Quake가 나온 즈음의 게임까지
DOS 게임을 폭 넓게 실행할 수 있게 되었습니다.



========
찾아보기
========
1. 빠른 도움말
2. 시작 (자주 찾는 질문들)
3. 명령 매개변수
4. 내부 프로그램
5. 바로가는 키
6. 조이스틱/게임패드
7. 매퍼
8. 키보드 레이아웃
9. 시리얼 멀티플레이어 기능
10. DOSBox의 속도 조절
11. 문제 해결
12. DOSBox 상태 창
13. 설정 구성 (옵션) 파일
14. 언어 파일
15. 나만의 DOSBox 만들기
16. 고마운 분들
17. 연락처

==============
1. 빠른 도움말
==============

DOSBox 명령 줄에서 INTRO라고 입력하여 빠른 도움말을 보실 수 있습니다.
마운트를 이해하는 데에 많은 도움을 받을 수 있습니다.
DOSBox는 에뮬레이션에 접근할 드라이브를 스스로 만들어 내지 않습니다.

4번 구문 "내부 프로그램"에 나온 MOUNT 명령의 설명뿐 아니라
FAQ 항목 "어떻게 시작합니까?"을 읽어 보십시오.
CD-ROM 게임을 하고 싶으면 다음 안내를 참조하십시오:
http://vogons.zetafleet.com/viewtopic.php?t=8933

=================
2. 자주 찾는 질문들
=================

몇 가지 자주 찾는 질문들:

시작:	어떻게 시작합니까?
자동 :	제가 늘 이 "mount" 명령어를 입력하여야 합니까?
전체 화면:	전체 화면으로 어떻게 바꿀 수 있습니까?
CD-ROM:	제 CD-ROM이 동작하지 않습니다.
CD-ROM:	게임, 응용 프로그램이 CD-ROM을 찾지 못합니다.
마우스:	마우스가 동작하지 않습니다.
소리:	소리가 나지 않습니다.
소리:	DOSBox가 어떠한 사운드 하드웨어를 가상으로 구현합니까?
소리:	소리가 끊기거나 늘어집니다.
키보드:	DOSBox에서 ＼ 또는 : 가 눌러지지 않습니다.
키보드:	오른쪽 Shift와 ＼가 DOSBox에서 동작하지 않습니다. (Windows)
키보드:	키보드가 반응이 느립니다.
제어:	캐릭터, 커서, 마우스 포인터가 늘 한쪽으로만 움직입니다!
속도:	게임, 응용 프로그램이 너무 느리게 돌아갑니다!
충돌:	게임, 응용 프로그램이 아예 동작하지 않고 충돌을 일으킵니다!
충돌:	DOSBox를 실행하자마자 충돌합니다.
게임:	제 빌드 게임(Duke3D/Blood/Shadow Warrior)에 문제가 있습니다.
안전:	DOSBox가 제 컴퓨터에 해를 끼칠 수 있습니까?
옵션:	DOSBox의 옵션을 바꾸고 싶습니다.
도움말:	설명이 잘 나와 있으나 그래도 잘 모르겠습니다.


시작: 어떻게 시작합니까?

  처음 시작할 때 여러분은 C:＼>가 아니라 Z:＼>라고 뜨는 것을 볼 것입니다.
  여러분이 가지고 있는 실제 디렉터리를 DOSBox의 가상 드라이브로 만들어야 합니다.
  "mount" 명령어를 써 보십시오.

    보기
    ① Windows에서
        "mount C D:＼GAMES" 라고 입력하면 실제 D:＼GAMES는 DOSBox의 C 드라이브가 됩니다.
    ② Linux에서
        "mount c /home/username" 라고 입력하면 실제 /home/username 의 위치는
        DOSBox의 C 드라이브가 됩니다.

   위에서 마운트된 드라이브로 바꾸려면 "C:"라고 입력하십시오.
   이렇게 해서 "C:\>"라고 뜨면 다 된 것입니다.


자동: 제가 늘 이 "mount" 명령어를 입력하여야 합니까?

  DOSBox 설정 구성 파일을 열면 [autoexec] 섹션이 있습니다. 그 아래에 명령어들을 적어 두십시오.
  그러면 DOSBox가 실행되자마자 이 명령어들이 실행됩니다. 마운트 등을 위해 이 섹션을 사용할 수 있습니다.
  단락 13: 설정 구성 (옵션) 파일을 참조하십시오.


전체 화면:	전체 화면으로 어떻게 바꿀 수 있습니까?
  Alt-Enter를 누르십시오. 아니면 DOSBox의 설정 구성 파일을 열고 fullscreen=false를
  fullscreen=true로 바꾸십시오. 화면이 제대로 꽉 차 보이지 않으면 DOSBox 설정 구성 파일의
  fullresolution, output, aspect의 값을 바꿔서 게임을 실행해 보십시오. 전체 화면 모드에서
  원래대로 되돌아가려면 다시 Alt-Enter를 누르시면 됩니다.


CD-ROM:	제 CD-ROM이 동작하지 않습니다.
  DOSBox에서 CD-ROM을 띄우려면 CD-ROM을 띄울 때 몇 가지 또 다른 선택 항목을
  지정하셔야 합니다.
   ① MSCDEX를 비롯한 CD-ROM 지원을 사용하려면: (Windows)
       - mount d f:＼ -t cdrom
       리눅스에서는 다음과 같이 합니다.
       - mount d /media/cdrom -t cdrom
      이따금씩은 특수한 CD-ROM 인터페이스를 사용하여야 하는 경우도 있습니다.
      이를테면 CD 오디오가 동작하지 않으면:
       SDL 지원 방식을 사용하거나
       - mount d f:＼ -t cdrom -usecd 0 -noioctl
       CD 오디오의 디지털 오디오 확장을 사용한 ioctl 접근을 사용하거나 (Windows 전용, 비스타 이상에 적합)
       - mount d f:＼ -t cdrom -ioctl_dx
       CD 오디오의 MCI를 이용하여 ioctl을 사용하거나 (Windows 전용)
       - mount d f:＼ -t cdrom -ioctl_mci
       ioctl만 사용할 수도 있습니다. (Windows 전용)
      - mount d f:＼ -t cdrom -ioctl_dio
   ② 낮은 수준의 SDL 지원을 사용하려면:
       - mount d f:＼ -t cdrom -aspi
   ③ 낮은 수준의 ASPI 지원을 사용하려면 (ASPI-Layer가 설치된 Win98):
       - mount d f:＼ -t cdrom -usecd 0 -apsi

   이 명령어에서:
    d      DOSBox의 가상 드라이브 문자열 (d가 가장 좋은 선택입니다.)
    f:＼   PC의 CD-ROM 실제 위치 (대부분의 경우 d:＼나 e:＼입니다)
    0   CD-ROM 드라이브의 숫자, mount -cd 를 통해 구분
   이 CD-ROM 드라이브 숫자 값은 CD 오디오를 재생하기 위하여 SDL을 사용할 때에만 사용되며
   다른 경우에는 무시됩니다.
   다음의 물음도 읽어 보십시오: 게임, 응용 프로그램이 CD-ROM을 찾지 못합니다.


CD-ROM: 게임, 응용 프로그램이 CD-ROM을 찾지 못합니다.
  CD-ROM을 띄우려면 -t cdrom 스위치를 사용하여야 합니다.
  게임이 CD-ROM 레이블(이름)을 찾아내려고 한다면 이름을 올바르게 지정하셔야 합니다 (-label 레이블 이름)
  낮은 수준의 CD-ROM 지원을 사용하려면 다음의 스위치를 지정하여야 합니다 : -usecd #
  (#는 mount -cd를 통해 알려주는 CD-ROM 드라이브의 숫자)
  Windows에서는 -ioctl, -aspi, 또는 -noioctl를 지정하십시오.
  이에 대한 더 자세한 내용은 이 문서의 4번 항목에서 찾아 보실 수 있습니다.

  아니면 CD-ROM 이미지를 만들어 보십시오. (CUE/BIN을 선호) 그리고 DOSBox 내부 명령어
  IMGMOUNT 도구를 가지고 이미지(CUE 시트)를 마운트해 보십시오. 이것은 어느 운영체제에서든지
  낮은 수준의 CD-ROM 지원을 이용할 수 있도록 도와 줍니다.


마우스: 마우스가 동작하지 않습니다.
  보통 DOSBox는 게임이 마우스를 제어할 때 마우스를 찾아냅니다.
  화면을 한 번 누르면 잠금 처리되어 돌아갑니다. (DOSBox 창 안에서)
  어떠한 게임에서는 DOSBox가 마우스를 찾아내지 못할 수도 있습니다.
  이 경우 Ctrl-F10 키를 눌러서 마우스를 잠궈둘 수 있습니다.
  어떠한 경우에는 다른 사운드 장치(이를테면 sbtype=spro1 이나 GUS)를 사용하여
  해결하기도 합니다.

소리: 소리가 나지 않습니다.
   게임 설정에서 사운드를 올바르게 구성했는지 살펴 보십시오.
   소리 설정 유틸리티는 게임이 깔릴 때 같이 깔리며 설치하는 동안에도 소리를 설정할지
   물어볼 수 있습니다.
   먼저 자동 감지(Autodetection) 옵션이 있는지 살펴 보십시오. 이 항목이 없다면
   SoundBlaster 또는 SoundBlaster 16을 골라 보십시오.
   DOSBox의 기본 설정값은 address=220 irq=7 dma=1 (가끔은 highdma=5일 때도 있음)
   입니다. MIDI도 고르실 수 있는데 이를테면 Sound Canvas/SCC/MPU-401/
   General MIDI/Wave Blaster의 경우 기본값은 address=330에 IRQ=2입니다.
   가상으로 구현되는 사운드 카드들의 매개 변수들은 DOSBox 설정 구성 파일 안에서 바꾸실
   수 있습니다.
   그래도 소리를 들으실 수 없다면 코어를 Normal로 바꾸시고 사이클 값을 cycles=2000과
   같이 좀 더 낮은 값으로 맞춰 보십시오.
   소리를 내보내는 사운드 카드의 드라이버가 제대로 설치되어 있는지,
   선이 잘 꽂혀 있는지, 소리 크기가 알맞게 맞추어져 있는지 살펴 보십시오.
   어떠한 경우에는 Sound Blaster Pro (DOSBox 설정 구성 파일에서의 sbtype=sbpro1) 또는
   Gravis Ultrasound (gus=true)와 같은 각기 다른 에뮬레이트되는 사운드 장치를 사용하는
   것이 도움이 될 수도 있습니다.


소리: DOSBox가 어떠한 사운드 하드웨어를 가상으로 구현합니까?
  DOSBox는 오래된 사운드 장치들 몇 가지를 가상으로 구현해 냅니다:
   - 내부 PC 스피커 (비프음)
     높고 낮은 소리와 여러 종류의 디지털 소리를 내부 스피커로 만들어 냅니다.
   - Creative CMS/Gameblaster
     Creative Labs(R) 사에서 맨 처음 선보인 사운드 카드입니다.  기본 포트 구성은 0x220으로 되어 있습니다.
     기본값은 disabled입니다.
   - Tandy 3 voice
     노이즈 채널을 제외하고 완전히 가상으로 구현해 냅니다.
     노이즈 채널은 아주 잘 문서화되어 있지 않으므로 사운드 정확도에 의문이 생길 수 있습니다.
     기본값은 disabled로 되어 있습니다.
   - Tandy DAC
     일부 게임은 더 나은 Tandy DAC 사운드 지원을 위해 SoundBlaster 에뮬레이션을 끌 것을(sbtype=none)
     요구할 수 있습니다. Tandy 사운드를 사용하지 않는다면 sbtype를 sb16으로 다시 설정해 놓는 것을
     잊지 마십시오.
   - Adlib
     이 에뮬레이션은 거의 완벽에 가깝고 디지털화된 소리를 충분히 재생할 수 있습니다.
   - SoundBlaster 16/ SoundBlaster Pro I & II /SoundBlaster I & II
     기본적으로 DOSBox는 SoundBlaster 16의 16비트 스테레오 사운드를 제공합니다.
     DOSBox.Conf에서 각기 다른 SoundBlaster 버전을 고를 수 있습니다. (내부 명령어를 보려면 : CONFIG)
     AWE32 음악은 가상으로 구현하지 않으며 MPU-401을 대신 사용할 수 있습니다. (아래 참고)
   - Disney Soundsource 및 Covox Speech
     이 소리 장치는 프린터 포트를 쓰고 디지털 소리만을 내보냅니다. LPT1에 위치합니다.
   - Gravis Ultrasound (GUS)
     이 하드웨어는 거의 완전히 가상으로 구현됩니다.
     MPU-401이 다른 코드에서 가상으로 구현된 뒤 MIDI를 거치면서 성능은 점점 떨어집니다.
     Gravis 음악의 경우 Gravis 드라이버를 DOSBox 안에서 설치하여야 할 수도 있습니다.
     기본값은 disabled입니다.
   - MPU-401
     MIDI Passthrough 인터페이스 또한 가상으로 구현됩니다.
     이 소리의 출력 방식은 일반 MIDI나 MT-32 장치와 함께 사용될 때에만 동작합니다.
     Windows XP/Vista/7 및 Mac OS는 호환이 되는 기본 에뮬레이터를 갖추고 있습니다:
     Sound Canvas/SCC/General Standard/General MIDI/Wave Blaster
     Roland LAPC/CM-32L/MT-32를 구현하려면 다른 장치나 별도의 에뮬레이터가 필요합니다.

소리: 소리가 끊기거나 늘어집니다.
   DOSBox가 현재의 빠르기를 맞추기 위해 CPU 전력을 너무 많이 쓰고 있습니다.
   CPU 사이클(cycles) 값을 낮추거나, 프레임 무시(frameskip) 값을 늘리거나, 각 사운드 장치 또는 믹서 장치의
   샘플 속도(samplerate)를 낮추십시오. 또 prebuffer의 값을 늘려 보십시오. 이것들은 모두 DOSBox
   설정 구성 파일에서 바꾸실 수 있습니다. 구문 13 설정 구성 (옵션) 파일을 참조하십시오.
   cycles=max 또는 cycles=auto를 사용하고 계시면, DOSBox 밖에서 쓰이는 다른 프로그램들,
   특히 하드 디스크에 접근을 많이 하는 프로그램들이 DOSBox를 간섭할 수 있습니다!
   또, 구문 10 "DOSBox 속도 조절"과 구문 11 '문제 해결'을 참고하십시오.

키보드: DOSBox에서 ＼ 또는 : 가 눌러지지 않습니다.
  ＼ 는 \와 같습니다. 한국어 자판을 쓸 때에는 이와 같은 문제가 없습니다.
  해당 키가 눌리지 않는 데에는 다양한 이유가 존재합니다. 호스트 운영 체제의 자판이 도스 레이아웃과
  일치하지 않거나 올바르게 감지하지 못 했을 때, 아니면 키 매핑이 잘못되었을 때에도 그러할 수 있습니다.

  몇 가지 해결할 수 있는 사항이 있습니다:
     1. ＼ 대신에 ／ 를 쓴다. :에 해당하는 ALT-58이나 \에 해당하는 ALT-92를 사용한다.
     2. 도스 자판 설계를 변경한다. (구문 8을 확인할 것)
     3. DOSBox.Conf를 열고 [autoexec] 아래에 명령어를 미리 입력해 놓는다.
     4. DOSBox.Conf를 열고 usescancodes 값을 수정한다.
     5. 운영체제의 자판 설계를 바꾼다.

  호스트 컴퓨터의 레이아웃이 증명되지 않았을 경우, 아니면 키보드 설계가 DOSBox 설정 구성 파일에서
  none (없음)으로 잡혀 있는 경우 표준 미국식 레이아웃이 사용됩니다.
  이 구성을 사용할 경우 \ (백슬래시)를 입력할 때 Enter 키 주변의 키들을 입력해 보십시오.
  : (콜론)의 경우 Shift 키를, 또 Enter와 L 사이의 키들을 눌러 보십시오.

키보드: 오른쪽 Shift와 ＼가 DOSBox에서 동작하지 않습니다. (Windows)
  사용자의 PC에 한 대 이상의 키보드가 장착되어 있으면 Windows 상에서 이러한 일이 벌어질 수 있습니다.
  이 문제를 확인하려면 cmd.exe를 실행한 뒤 DOSBox 프로그램 폴더에 들어가서 다음과 같이 입력하십시오.
  set sdl_videodriver=windib
  dosbox.exe
  키보드가 정상 동작하는지 확인해 보십시오. windib는 속도가 느립니다. 이곳에 제공된 두 가지 해결책 가운데
  하나를 이용하는 것이 가장 좋습니다.
  http://vogons.zetafleet.com/viewtopic.php?t=24072

키보드: 키보드가 반응이 느립니다.
  DOSBox 설정 구성 파일에서 priority=normal,normal과 같이 우선 순위를 바꿔 보십시오.
  CPU 사이클을 낮추는 것도 고려해 보십시오. (cycles=10000과 같이 사이클 고정값을 입력해 보십시오)

제어: 캐릭터, 커서, 마우스 포인터가 늘 한쪽으로만 움직입니다!
       조이스틱 에뮬레이션을 꺼 보십시오. DOSBox 설정 구성 파일에서 joysticktype=none으로 두시면
       됩니다. 조이스틱이나 키패드가 꽂혀 있다면 빼 주십시오.
       게임에서 조이스틱을 사용하려면 timed=false로 설정하십시오. 그리고 운영체제의 제어판 쪽과
       게임 설정에서 조이스틱의 설정을 여러분의 조이스틱을 만져 보면서 잘 맞춰 보십시오.


속도: 게임, 응용 프로그램이 너무 느리게 돌아갑니다!
   더 많은 정보를 보려면 구문 10 "DOSBox 속도 조절"을 읽어 보십시오.

충돌: 게임, 응용 프로그램이 아예 동작하지 않고 충돌을 일으킵니다!
  11번째 구문 "문제 해결"을 읽어 보십시오.

충돌: DOSBox를 실행하자마자 충돌합니다.
  11번째 구문 "문제 해결"을 읽어 보십시오.

게임: 제 빌드 게임(Duke3D/Blood/Shadow Warrior)에 문제가 있습니다.
  먼저 게임 포트를 찾아 보십시오. 높은 해상도에서 DOSBox의 그래픽 문제를 해결하려면
  DOSBox 설정 구성 파일 (DOSBox.Conf)을 열고 machine=svga_s3을 찾아 보십시오.
  이 svga_s3을 vesa_nolfb로 바꿔 보십시오. memsize=16을 memsize=63으로 바꿔 보십시오.

안전: DOSBox가 제 컴퓨터에 해를 끼칠 수 있습니까?
    DOSBox는 리소스를 많이 쓰는 다른 프로그램들에 견주어 보더라도 컴퓨터에 해를 주지 않습니다.
    사이클 값을 높인다고 해서 실제 CPU 클럭을 끌어 올리는 것이 아닙니다.
    사이클을 너무 높게 잡으면 DOSBox 안에서 실행되고 있는 소프트웨어의 성능이 떨어질 수 있습니다.

옵션: DOSBox의 옵션을 바꾸고 싶습니다.
   구문 13 "설정 구성 (옵션) 파일"을 읽어 보십시오.

도움말: 설명이 잘 나와 있으나 그래도 잘 모르겠습니다.
      다른 질문이 있다면 이 설명서의 나머지 부분도 참고해 보십시오. 또 이곳도 참조해 보십시오.
      "The Newbie's pictorial guide to DOSBox" (초보자를 위한 DOSBox로의 그림 안내)가
      http://vogons.zetafleet.com/viewforum.php?f=39 에 올려져 있습니다.
      DOSBox의 위키도 들어가 보십시오 :    http://www.dosbox.com/wiki/
      DOSBox 사이트 및 포럼 : http://www.dosbox.com



================
3. 명령 매개변수
================

DOSBox가 가질 수 명령 줄 옵션이 아래에 추려져 있습니다.
대부분의 경우 DOSBox의 설정 구성 파일(DOSBox.Conf)을 이용하는 것이
더 쉬울 수 있습니다.

Windows 사용자: cmd.exe 또는 command.com를 열거나
DOSBox.exe에 대한 바로가기를 수정하여 아래의 항목을 지정할 수 있습니다.

Linux 사용자: 콘솔을 이용하십시오.

MAC OS X 사용자: terminal.app을 시작하고 이곳으로 들어가십시오:
   /applications/dosbox.app/contents/macos/dosbox

이 옵션들은 특별한 말이 없는 한 모든 운영체제에서 돌아갑니다.

dosbox [이름] [-exit] [-c 명령어] [-fullscreen] -[-userconf]
       [-conf 설정구성파일] [-lang 언어파일위치]
       [-machine 기기 종류] [-noconsole] [-startmapper] [-noautoexec]
       [-securemode] [-scaler 스케일러] [-forcescaler 스케일러] [-version]
       [-socket 소켓]

dosbox -version
dosbox -editconf 프로그램
dosbox -opencaptures 프로그램
dosbox -printconf
dosbox -eraseconf
dosbox -resetmapper
 

  이름
        "이름"이 디렉터리라면, C 드라이브로 마운트합니다
        "이름"이 실행 파일이라면, C 드라이브의 "이름"이 있는 디렉터리를 마운트합니다

  -exit
        "이름"의 실행이 끝나면 DOSBox는 바로 닫힙니다.

  -c 명령어
        "이름"이 실행되기 전에 지정된 명령어를 먼저 실행합니다. 여러 개의 명령어들을 한꺼번에
        지정할 수도 있습니다. 그러나 명령어마다 앞에 -c를 붙여야 합니다.
        내부 프로그램, DOS 명령어, 아니면 마운트된 드라이브의 실행 파일이 명령어가 될 수 있습니다.

  -fullscreen
        DOSBox를 전체 화면 모드로 실행합니다.

  -userconf
        사용자가 지정한 설정 구성 파일로 DOSBox를 시작합니다. -conf 변수와 함께 사용할 수 있지만
        -userconf는 늘 -conf 변수 바로 앞에 위치하여야 합니다.

  -conf 설정구성파일
        "설정구성파일" 안에 지정된 선택 내용에 따라 DOSBox를 실행합니다.
        -conf 옵션을 여러 개 지정해서 사용할 수도 있습니다. 더 자세한 정보는 13번째 구문에 있습니다.

  -lang 언어파일위치
        "언어파일위치" 안에 지정된 언어 문자열을 사용하여 DOSBox를 실행합니다.
        더 자세한 정보는 14번째 구문에 있습니다.

  -machine 기기 종류
        DOSBox가 원하는 종류의 기기를 가상으로 구현해 낼 수 있게 합니다.
        사용할 수 있는 기기 종류는 : hercules, cga, ega, tandy, pcjr, vga (기본값) 입니다.
        여기에다 DOSBox 설정 구성 파일의 도움말에 나열된 svga 칩셋도 선택할 수 있습니다.
        svga_s3는 VESA 에뮬레이션까지 담당합니다.
        일부 VGA 특수 효과의 경우 machinetype 중 vgaonly를 사용할 수 있습니다만
        이것은 SVGA 기능을 사용할 수 없게 하고 더 높은 에뮬레이션의 정확성 때문에
        속도가 느려질 수 있습니다.
        기기 종류는 그래픽 카드와 이에 따른 사운드 카드 둘 다 영향을 미칩니다.

  -noconsole (Windows 운영체제만)
        DOSBox 상태 창(콘솔 창)을 보이지 않고 DOSBox를 실행합니다.
        stdout.txt 와 stderr.txt 로 대신 출력합니다.

  -startmapper
        실행하자마자 곧바로 키보드/조이스틱 매핑 프로그램을 띄웁니다.
        키보드나 조이스틱에 문제가 있을 때 쓰시기 바랍니다.

  -noautoexec
        자동 일괄 실행(AUTOEXEC - DOSBox.Conf의 [autoexec] 섹션)을 사용하지 않습니다.

  -securemode
        -noautoexec와 같지만 config.com -securemode를 AUTOEXEC.BAT 맨 아래에 집어 넣습니다. 도스박스 안에서
        드라이브의 마운트 방식을 꺼 놓습니다.

  -scaler 스케일러 이름
        "스케일러 이름"으로 지정된 스케일러를 사용합니다. 이 기능을 쓰려면 먼저 DOSBox 설정 구성 파일을
        열어서 어떠한 스케일러들을 사용할 수 있는지 살펴 보십시오.

  -forcescaler 스케일러 이름
        위의 -scaler 변수와 비슷합니다. 다만 지정된 스케일러가 화면 크기에 알맞게 들어맞지 않는 등 어떠한 경우가
        있다 하더라도 무조건 사용하도록 합니다.

  -version
        버전 정보를 보여주고 끝냅니다. 프론트엔드를 쓸 때 유용합니다.

  -editconf 프로그램
        첫 변수로 지정된 프로그램을 구성 파일로 호출합니다.
        이 명령을 한 번 이상 지정할 수 있습니다. 이 경우 첫 번째 프로그램이 시작을 실패하면 두 번째 프로그램이 실행됩니다.

  -opencaptures 프로그램
        첫 변수로 지정된 프로그램을 캡처 폴더 변수로 호출합니다.

  -printconf
        기본 구성 파일의 위치를 출력합니다.

  -eraseconf
        기본 구성 파일을 제거합니다.

  -resetmapper
        깨끗한 기본 구성 파일이 사용하는 매퍼 파일을 제거합니다.

  -socket
        소켓 번호를 nullmodem 에뮬레이션으로 내보냅니다.
        구문 9 "시리얼 멀티플레이어 기능"을 참고하십시오.

알림 : 이름/명령/설정구성파일/언어파일위치에 빈 칸이 들어 있으면
        모든 항목들(이름/명령어/설정구성파일/언어파일)마다 큰 따옴표를 넣으십시오.
        ("명령 또는 파일 이름").
        따옴표 안에 따옴표를 넣고 싶으시면 (흔히 -c와 마운트 방식이 뒷따름)
        Windows와 OS/2 사용자들은 큰 따옴표(") 안에 작은 따옴표(')를 넣으십시오.
        다른 운영체제를 쓰시는 분들은 \를 대신 쓰면 됩니다.
        Windows: -c "mount c 'c:\My folder with DOS games\'"
        Linux: -c "mount c \"/tmp/빈 칸이 들어간 이름\""

Windows의 경우 드문 예가 하나 있습니다:

dosbox D:＼folder＼file.exe -c "MOUNT Y H:＼MyFolder"
  이것은 D:＼folder를 c:＼으로 마운트시키고 file.exe 파일을 실행합니다.
  이에 앞서 먼저 H:＼MyFolder 는 Y 드라이브로 마운트합니다.

또, Windows에서는 디렉터리나 파일을 DOSBox 실행 파일로 끌어 놓올 수 있습니다.



================
4. 내부 프로그램
================

DOSBox는 command.com에서 찾을 수 있는 DOS 명령어들 가운데 많은 수를 지원합니다.
그 밖에 다음의 명령어들도 사용할 수 있습니다:

MOUNT "가상으로 쓰려는 드라이브 문자" "실제 드라이브 문자:\ 또는 디렉터리"
      [-t 종류] [-aspi] [-ioctl] [-noioctl] [-usecd 숫자] [-size 드라이브 크기] 
      [-label 드라이브 이름] [-freesize 크기(MB)] [-freesize 크기(KB : 플로피)]

MOUNT -cd

MOUNT -u "가상 드라이브를 헤제할 문자"

  로컬 디렉터리들이 DOSBox 안에서 드라이브로 인식합니다.

  "가상으로 쓰려는 드라이브 문자"
  → DOSBox 안의 드라이브 문자 (보기 : mount c c:＼의 c)

  "실제 드라이브 문자:\ 또는 디렉터리"
  → DOSBox 안에서 사용할 로컬 디렉터리
      (Win32의 경우 "가상 구현된 드라이브 문자"와 같습니다.
        보기 : mount c c:＼의 c:＼)

  -t 종류
  → 마운트되는 디렉터리의 종류 - 'dir (기본값), floppy, cdrom' 중 하나를 고를 수 있습니다
      (보기 : mount d -t cdrom d:＼)

  -size 드라이브 크기
  → (고급 사용자만 이용할 것) 드라이브의 크기를 지정합니다. 여기서 형식은 "bps, spc, tcl, fcl"이 있습니다.
      bps: bytes per psector(섹터 당 바이트). CD-ROM 드라이브에서는 2048이며, 그 밖에는 512가 기본입니다.
      spc: sectors per cluster(클러스터 당 섹터). 보통 1에서 127까지 쓸 수 있습니다.
      tcl: total clusters(모든 클러스터). 1에서 65534까지 쓸 수 있습니다.
      fcl: total free clusters(남아 있는 클러스터). 1에서 tcl 값까지 쓸 수 있습니다.

  -freesize 크기 (단위 : MB | KB)
  → 드라이브에서 사용할 수 있는 여유 공간의 크기를 설정합니다. 단위는 일반 드라이브에서 MB(메가바이트)이며
      플로피 드라이브에서는 KB(킬로바이트)입니다.
    -size 보다 더 간단하게 사용할 수 있습니다.

  -label 드라이브 이름 (레이블)
  → 드라이브의 이름을 지정합니다. 프로그램이나 게임이 CD-ROM의 이름을 읽어내지 못할 때 사용하십시오.
      레이블을 지정하지 않거나 낮은 수준의 지원을 사용하지 않을 때 (-usecd # 및 -ioctl/aspi를 사용하지 않거나 -noioctl를 지정할 때)
       * Win32에서 : 기본적으로 "실제 드라이브"의 레이블을 가져옵니다.
       * Linux에서 : 기본적으로 NO_LABEL (레이블 없음)으로 설정합니다.

    마운트가 된 뒤에는 레이블 이름을 따로 바꿀 수 없습니다.

  -aspi
  → ASPI 레이어를 강제로 사용합니다. (현재는 이용할 수 없음)
      ASPI 레이어를 사용하는 Windows 시스템에서만 이 옵션으로 마운트하실 수 있습니다.

  -ioctl (CD 오디오 인터페이스 자동 선택)
  -ioctl_dx (CD 오디오에 쓰이는 디지털 오디오 확장)
  -ioctl_dio (CD 오디오 재생을 위해 ioctl 요청)
  -ioctl_mci (CD 오디오 재생을 위해 MCI 사용)
  → ioctl 명령어를 강제로 사용합니다. Windows NT/2000/XP/2003/Vista/7 이상에서만 사용하십시오.
     CD 오디오를 위한 다양한 선택 사항이 존재하지만 부하가 적은 -ioctl_dio를 사용하는 것이 좋습니다. 그러나 모든 시스템에서 동작하는
     것은 아니기 때문에 -ioctl_dx나 -ioctl_mci도 사용할 수 있습니다.

  -noioctl
  → SDL CD-ROM 레이어를 강제로 사용합니다. 모든 시스템에서 쓸 수 있습니다.

  -usecd 숫자
  → 모든 운영 체제에서 사용할 수 있습니다. 그러나 Windows에서는 -noioctl 스위치를 사용하여야 -usecd 스위치를
     사용할 수 있습니다. SDL에 사용하여야 하는 드라이브를 사용할 수 있게 합니다.
     SDL CD-ROM 인터페이스를 사용하는 동안 CD-ROM 드라이브가 없다고 뜨거나 문제가 있으면 사용하십시오.
     이것을 사용하기 전에 mount -cd 라고 입력해서 CD-ROM에 맞는 숫자를 미리 살펴 보실 수 있습니다.

  -cd
  → CD-ROM의 실제 번호와 드라이브를 보여줍니다. -usecd를 사용할 때 참고하십시오.

  -u
  → 마운트했던 드라이브의 마운트를 해제합니다.
      Z:\에서는 동작하지 않습니다.

  알림 : 로컬 디렉터리를 CD-ROM 드라이브로 마운트할 수는 있습니다. 그러나
           하드웨어 지원을 제대로 받지 못할 수도 있습니다.

  MOUNT는 기본적으로 여러분이 가지고 있는 실제 하드웨어를 DOSBox의 가상 컴퓨터에
  연결할 수 있도록 도와 줍니다. MOUNT C C:\GAMES은 DOSBox가 여러분의 실제 C 드라이브를
  DOSBox의 C:\GAMES로 연결할 수 있게 해 줍니다. 또한 어떠한 프로그램에 맞추어
  드라이브의 문자열을 바꿀 수도 있습니다.

  'MOUNT C C:\'와 같이 C 드라이브를 통째로 마운트하지 않는 것이 좋습니다!
  이는 읽기 전용이 특징인 CD-ROM을 제외한 다른 드라이브의 루트 드라이브를 마운트하는 것도
  마찬가지입니다.   사용자나 DOSBox는 잘못하여 사용자가 가지고 있던 파일을 모두 날려 버릴 수도
  있습니다. 또, Windows Vista/7에서 Windows 폴더나 Program Files 폴더, 또 그 하위 폴더로
  마운트하지 마십시오. DOSBox가 정상 동작하지 않거나 뒤에 동작을 멈출 수도 있습니다.
  응용 프로그램이나 게임을 담고 있는 단순한 디렉터리를 마운트하실 것을 권합니다.

  DOSBox 안에서 게임을 설치하여야 할 수도 있습니다. 그러므로 CD에 게임이 있다면 (설치 이후라도)
  CD-ROM과 하드 디스크 드라이브를 폴더로 둘 다 마운트하여야 합니다.
  이를테면 하드 디스크는 c로 마운트하고
  CD-ROM은 d로 마운트하며
  플로피는 a나 b로 마운트하여야 합니다.

  Windows에서 MOUNT를 하는 일반 보기입니다:
  1. 폴더를 하드디스크로 마운트:
       mount c d:\dosgames
  2. 드라이브를 플로피로 마운트:
       mount a a:\ -t floppy
  3. CD-ROM 드라이브 E를 도스박스의 CD-ROM 드라이브 D로 마운트:
       mount d e:\ -t cdrom

  Windows에서 MOUNT를 하는 고급 보기입니다:

  4. ~870 mb의 남은 디스크 공간이 있는 하드 디스크 드라이브 마운트 (단순 버전):
      mount c d:\dosgames -freesize 870

  5. ~870 mb의 남은 디스크 공간이 있는 드라이브를 마운트 (고급 사용자용, 완전한 제어):
      mount c d:\dosgames -size 512,127,166513,13500

  다른 MOUNT 보기:
  6. /media/cdrom 위치의 시스템 CD-ROM 드라이브를 DOSBox에서 D 드라이브로 마운트 :
       mount d /media/cdrom -t cdrom -usecd 0
  7. DOSBox에서 /home/user/dirY 를 드라이브로 마운트 :
       mount c /home/user/dirY
  8. DOSBox가 설치된 디렉터리를 DOSBox에서 D로 마운트 :
       mount d .
     (.은 Windows Vista/7에서 도스박스가 시작한 디렉터리를 말함.
      DOSBox가 Program Files에 설치되어 있다면 이것을 사용하지 마십시오)

  CD 이미지나 플로피 이미지를 마운트하려면 IMGMOUNT를 사용하십시오.
  MOUNT는 다음과 같은 외부 프로그램들을 이용할 경우에만 이미지와 동작합니다.
  - Daemon Tools Lite (CD 이미지)
  - Virtual Floppy Drive (플로피 이미지)
  다만 IMGMOUNT가 더 나은 호환성을 제공할 수 있습니다.

MEM
  메모리가 얼만큼 남아 있는지 보여주는 프로그램입니다.

VER
  VER set 기본 버전 [소수점 뒤의 버전]
  도스박스 버전을 보여 주고 도스 버전을 보고합니다. VER set 6 22라고 입력하면 도스박스에 6.22으로 버전 번호를 입력하게 됩니다.

CONFIG -writeconf 파일 위치
CONFIG -writeconf
CONFIG -wcp 파일 위치
CONFIG -wcd
CONFIG -writelang 파일 위치
CONFIG -axadd
CONFIG -axclear
CONFIG -axtype
CONFIG -r [매개 변수]
CONFIG -l
CONFIG -help
CONFIG -help 섹션
CONFIG -help 섹션
CONFIG -help 섹션 속성
CONFIG -securemode
CONFIG -set "섹션 속성=값"
CONFIG -get "섹션 속성"

  CONFIG를 쓰면 DOSBox를 실행하는 동안 갖가지 설정 값을 바꿀 수 있습니다.
  지정해 둔 설정과 언어 문자열을 디스크에 저장할 수 있습니다.
  사용할 수 있는 모든 섹션과 속성에 대한 정보를 보려면 13번 항목 (설정 구성 파일)을 읽어 보십시오.

  -writeconf 파일 위치
       (또는 -wc 파일 위치)

       현재의 구성을 DOSBox 구성 디렉터리에 상대적으로 지정된 위치에 파일을 기록합니다.
       상대 경로와 절대 경로 모두 사용할 수 있습닌다. "파일 위치"는 DOSBox가 있는 실제 드라이브에
       있습니다. (DOSBox에서 마운트한 드라이브에 있지 않습니다)

       설정 구성 파일은 DOSBox의 여러 설정을 제어합니다 :
       가상으로 구현된 메모리의 크기, 가상으로 구현된 사운드 카드 밖의 설정들.
       AUTOEXEC.BAT에도 접근할 수 있습니다.
       더 자세한 정보를 보려면 13번 항목 (설정 구성 파일)에서 찾으실 수 있습니다.

  -writeconf
     (또는 -wc)
     기본값으로 된 설정을 구성 파일로 기록합니다.

  -wcp 파일 위치
     현재의 구성을 지정된 위치나 DOSBox 프로그램 시작 디렉터리에 상대적인
     위치에 기록합니다. 상대 경로와 절대 경로 모두 사용할 수 있습니다.
     "파일 위치"는 DOSBox가 있는 실제 드라이브에 있습니다. (DOSBox에 마운트한 드라이브에
    있지 않습니다)  DOSBox를 이동식 미디어에 갖고 다니는 경우 유용합니다.
    파일이 제거되어 있다면 설정은 dosbox.conf로 기록할 것입니다.

  -wcd
     현재의 설정을 기본 구성 파일에 기록합니다.

  -writelang 파일 위치
     (또는 -wl 파일 위치)
       현재의 언어 설정을 파일에 기록합니다.
       "파일 위치"는 DOSBox가 있는 실제 드라이브에 있습니다. (DOSBox에서 마운트한 드라이브에 있지 않습니다)
       언어 파일은 내부 명령어와 내부 DOS에서 눈에 보이는 모든 출력 문자열을 제어합니다.
       더 자세한 정보는 14번 구문 "언어 파일"을 읽어 보십시오.

  -axadd "줄1" "줄2" ...
     autoexec 단락에 명령 줄을 추가합니다.

  -axclear
     autoexec 단락의 내용을 삭제합니다.
     
  -axtype
     autoexec 단락의 내용을 출력합니다.

  -r [매개 변수]
     현재의 인스턴스를 시작하는 데 사용하였던 매개 변수나 이미 추가하였던
     매개 변수를 사용하여 DOSBox를 다시 시작합니다.

  -l 
     DOSBox 매개 변수를 나열합니다:
     - 설정 구성 디렉터리
     - 현 세션을 시작할 때 사용하였던 설정 파일
     - DOSBox를 시작할 때 사용하였던 명령 줄 매개 변수

  -h, -help, -?
     config 명령의 개요를 간략하게 보여 줍니다.

  -h, -help, -? 섹션
     설정 구성 파일의 섹션을 나열하여 보여 줍니다.
  
  -h, -help, -? 섹션
     지정된 섹션에 포함된 속성을 나열하여 보여 줍니다.
     
  -h, -help, -? 섹션 속성
     지정된 섹셔의 지정된 속성에 대한 정보를 보여 줍니다.
     - 속성의 목적
     - 속성 값, 현재 값, 기본값
     - 실행 중에 해당 값이 변경할 수 있는 값인지에 대한 여부

  -securemode
       도스박스를 더 안전한 모드로 전환합니다. 이 모드에서 내부 명령어 MOUNT, IMGMOUNT, BOOT는 동작하지 않습니다.
       새로운 설정 구성 파일이나 언어 파일을 만들 수도 없습니다. (도스박스를 다시 시작하여야 앞서 언급한 기능들을 사용할 수 있음)

  -set "섹션 속성=값"
       속성을 새로운 값으로 설정합니다.

  -get "섹션 속성"
       속성에 들어있는 값을 알려 주며 %CONFIG% 환경 변수에 저장됩니다.
       일괄(배치) 파일을 사용하여 값을 저장할 때 쓰시면 됩니다.

  "-set"와 "-get" 둘 다 일괄(bat) 파일에 넣을 수 있으며 게임마다 설정을 다르게 하여 쓸 수 있습니다.
  그 대신 각 게임에 맞추어 별도의 DOSBox 설정 구성 파일을 사용하는 것이 더 쉬울 수도 있습니다.

  보기 :
  1. c:\dosgames 디렉터리에 설정 구성 파일을 만들기:
      config -writeconf c:\dosgames\dosbox.conf
  2. CPU 사이클 값을 10000으로 놓기:
      config -set "cpu cycles=1000"
  3. EMS 메모리 가상 구현을 끄기:
      config -set "dos ems=false"
  4. 어떤 CPU 코어가 쓰이고 있는지 알아 보기:
      config -get "cpu core"

LOADFIX [-크기] [프로그램] [프로그램 매개변수]
LOADFIX -f

  메모리를 잡아먹게 합니다.
  오래된 프로그램들이 너무 많은 메모리를 알아채지 못할 때가 있는데 이럴 때 쓰면 좋습니다.

  -크기
        메모리를 차지할 KB 수, 기본값 = 64kb
  -f
        이전에 할당했던 모든 메모리를 되돌립니다


보기:
  1. 64KB 메모리를 할당하여 MM2.EXE를 실행할 때 :
     loadfix mm2
  2. 32KB 메모리를 할당하여 MM2.EXE를 실행할 때 :
     loadfix -32 mm2
  3. 이전에 할당한 모든 메모리 복구 :
     loadfix -f
  4. 사용할 수 있는 CPU 목록을 나열 :
     config -help cpu core
  5. 사용할 수 있는 CPU 코어 목록을 나열 :
     config -help cpu core
  6. 기기(machine) 종류를 변경하고 다시 시작 :
     config -set "machine cga"
     config -wc -r
  7. 처음 시작할 때 디렉터리를 자동 마운트하기 위한 autoexec 단락을 구성
     config -axadd "mount c c:\dosgames" "c:"
     config -wc
  8. 설정 디렉터리에 지정된 설정 파일을 만들기 :
     config -set "dos ems=false"
     config -set "cpu cycles=10000"
     config -set "core dynamic"
     config -axadd "mount c c:\dosgames" "c:" "cd my_game" "my_game"
     config -wc my_config.conf
  9. 설정 디렉터리의 지정된 설정 파일로부터 DOSBox를 다시 시작 :
     config -r -conf my_config.conf


RESCAN [드라이브:] [-All]
DOSBox 드라이브의 구조를 다시 불러 들입니다. DOSBox 밖에서 마운트된 드라이브 내의
무언가를 변경한 경우 유용합니다. (Ctrl-F4 키를 누르셔도 이 기능이 동작합니다.)

  드라이브:
    새로 고칠 드라이브

 -All:
   모든 드라이브를 새로 고칩니다.

  "드라이브:"와 "-All" 모두 지정되지 않았다면 현재의 드라이브만 새로 고칩니다.


MIXER
  DOSBox가 현재의 소리 크기 설정을 보여 줍니다.
  이 설정을 바꾸실 수 있는 방법은 다음과 같습니다:

  mixer 채널 왼쪽:오른쪽 [/NOSHOW] [/LISTMIDI]

  채널
      다음 중 하나를 고를 수 있습니다: MASTER, DISNEY, SPKR, GUS, SB, FM, [, CDAUDIO]
      CDAUDIO는 볼륨 제어가 있는 CD-ROM 인터페이스를 이용하고 있을 때(CD 이미지, ioctl_dx)
      사용할 수 있습니다.

  왼쪽:오른쪽
      소리 크기를 % 로 보여 줍니다. 앞에 D 를 놓으면 데시벨(deciBell)로 보여 줍니다
      보기) mixer gus d-10

  /NOSHOW
      소리 크기 수준에서 하나를 설정한다면 DOSBox가 결과를 보여 주지 않게 합니다.

  /LISTMIDI
      PC(Windows)에서 사용할 수 있는 미디 장치를 나열합니다.
      Windows 기본 미디 매퍼 뿐만 아니라 다른 장치도 고르려면
      설정 구성 파일 안에 'midiconfig=id' 줄을 추가하여 [midi] 섹션에다 추가하십시오.
      여기서 나오는 id는 LISTMIDI의 목록에 나온 장치의 개수를 뜻합니다. (예: midiconfig=2)

      리눅스의 경우 이 옵션은 동작하지 않지만 콘솔에서 'pmidi -l' 를 이용하면 비슷한
      결과를 얻을 수 있습니다. 그 뒤 "midiconfig=" 줄을 "midiconfig=포트"로 바꾸어
      주시면 됩니다. 여기서 포트는 pmidi -l을 통해 나열한 장치의 포트를 가리킵니다.
      (예: midiconfig=128:0)


IMGMOUNT
DOSBox에서 디스크 이미지와 CD-ROM 이미지를 마운트할 때 쓰이는 유틸리티입니다.

IMGMOUNT 드라이브 [이미지 파일] -t [이미지 종류] -fs [이미지 형식]
	-size [섹터 바이트 크기, 헤드 당 섹터 수, 헤드 수, 실린더 수]
IMGMOUNT 드라이브 [이미지 파일1, 이미지 파일2, ... 이미지파일N] -t cdrom -fs iso

  이미지 파일
      DOSBox에서 마운트하려는 이미지 파일의 위치입니다.
      이 위치는 DOSBox 안에서 마운트된 드라이브나 실제 디스크로 설정할 수 있습니다.
      CD-ROM 이미지 (ISO 또는 CUE/BIN 또는 CUE/IMG) 또한 마운트할 수 있습니다. CD 바꾸기 기능을 사용하고 싶으시면
      바로 아래에 있는 옵션을 보십시오.
      CUE/BIN 파일들은 선호되는 CD-ROM 이미지 형태로, 데이터만 입력할 수 있는 ISO에
      소리가 저장되어 있습니다. CUE/BIN의 경우 마운트할 때 언제나 CUE 시트를 지정합니다.

  이미지 파일1, 이미지 파일2, ... 이미지파일N
      DOSBox에서 마운트하려는 이미지 파일의 위치입니다.
      이미지 파일의 번호는 CD-ROM 이미지만 허용합니다. CD들은 어느 때나 CTRL-F4키를
      누르면 바꿀 수 있습니다. 여러 개의 CD-ROM이 필요한 게임이나 게임 도중 CD를 바꿔야 할 때
      사용하십시오.

  -t [이미지 종류]
      다음의 3가지 이미지 종류 중 하나를 고를 수 있습니다:
        floppy
                플로피 이미지, 일반 이미지를 지정합니다.
                DOSBox는 자동으로 디스크 용량을 알아냅니다 (보기 : 360K 1.2MB, 720K, 1.44MB, 등)
        cdrom
                CD-ROM의 ISO 이미지를 지정합니다. 용량은 알아서 인식하여 해당 크기로 설정합니다.
                ISO, CUE/BIN, CUE/IMG를 사용할 수 있습니다.
        hdd
                하드 드라이브 이미지를 지정합니다. 알맞은 CHS 용량이 설정되어야 이 옵션이 동작합니다.

  -fs [이미지 형식]
      다음의 파일 시스템 형식을 사용할 수 있습니다:
        iso
                ISO 9660 CD-ROM 포맷을 사용합니다.
        fat
                이미지를 파일 할당 테이블(FAT) 파일 시스템으로 사용합니다.
                DOSBox는 해당 이미지를 DOSBox의 드라이브로 인식하며 DOSBox 안에서 파일들을 사용할 수 있습니다.
        none
                DOSBox가 디스크의 파일 시스템을 읽어들이지 않습니다.
                포맷하여야 하거나, BOOT 명령어를 사용하여 디스크를 시동하여야 할 때 쓸모 있습니다.
                "none" 파일 시스템을 사용할 때 드라이브 문자가 아닌 드라이브 숫자를 지정하여야 합니다
                 (2 또는 3) → 2는 마스터, 3은 슬레이브
                예를 들어, 70MB 이미지를 슬레이브 드라이브 장치로 마운트하고자 한다면, 이렇게 입력하십시오:
                 "imgmount 3 d:\test.img -size 512,63,16,142 -fs none"
                DOSBox의 드라이브로 읽어들이려면:
                 "imgmount e: d:\test.img -size 512,63,16,142"

  -size [섹터바이트 크기, 헤드 당 섹터 수, 헤드 수, 실린더 수]
     실린더, 헤더, 섹터를 드라이브에 맞게 지정합니다.
     하드 드라이브 이미지를 마운트할 때 필요합니다. 
     
  CD-ROM 이미지의 본보기 (리눅스):
    1. imgmount d /tmp/cdimage1.cue /tmp/cdimage2.cue -t cdrom
    또는
    2-가. mount c /tmp
    2-나. imgmount d c:\cdimage1.cue c:\cdimage2.cue -t cdrom
  CD-ROM 이미지의 본보기 (리눅스):
    imgmount d f:\img\CD1.cue f:\img\CD2.cue f:\img\CD3.cue -t cdrom
    imgmount d "g:\img\7th Guest CD1.cue" "g:\img\7th Guest CD2.cue" -t cdrom
  MOUNT로 이미지를 마운트할 수 있지만 이 때에는 반드시 외부 프로그램을 이용하여야 합니다.
  (위에 언급)


BOOT
 BOOT는 플로피 이미지나 하드 드라이브 이미지가 DOSBox를 거쳐 운영 체제 에뮬레이션을 독립적으로 수행하게 합니다.
 시동 플로피 디스크로 사용하거나 DOSBox 안에서 다른 운영체제로 시동할 수 있게 합니다.
 가상으로 구현되는 시스템이 PCJr이라면(machine=pcjr) BOOT 명령어로 PCJr 카트리지(.jrc)를 불러올 수 있습니다.

  BOOT [디스크이미지1.img 디스크이미지2.img … 디스크이미지N.img] [-l 드라이브 문자열]
  BOOT [cart.jrc] (PCJr 전용) b

 diskimg1.img diskimg2.img .. diskimgN.img (N은 숫자)
 지정된 드라이브 문자열로 DOSBox가 시동한 뒤에 마운트하고자 하는 플로피 디스크의 이미지의 수를 지정할 수 있습니다.
 이미지를 넘기려면, CTRL-F4 키를 눌러 현재의 디스크를 빠져나오게 하고 목록에서 다음 디스크로 넘겨 주십시오.
 목록에서 마지막 디스크가 다 끝나면, 목록은 처음으로 다시 되돌아갑니다.

 - 알면 좋은 정보!
 내가 좋아하는 게임 정품이 디스켓이 3장 있다고 칩시다.
 게임을 설치하다가 '두 번째 디스켓을 넣으라', '세 번째 디스켓을 넣으라'할 때가 있을 것입니다.
 이 때 첫 번째 디스켓이 끝나면 CTRL-F4 키를 눌러 두 번째 디스켓으로 넘기게 하면 되고,
 '세 번째 디스켓을 넣으라'라고 뜨면 또 다시 CTRL-F4 키를 눌러 세 번째 디스켓으로 넘기면 됩니다.

 [-l 드라이브 문자열]
 시동할 드라이브를 지정하는 매개 변수입니다. 플로피 드라이브는 기본값으로 A 드라이브입니다.
 하드 드라이브 이미지를 마스터로 시동하려면 "-l C"라고 지정하십시오.
 아니면 "-l D"로 지정하여 하드 드라이브 이미지를 슬레이브로 지정할 수도 있습니다.

 cart.jrc (PCJr 전용)
 PCJr의 가상 구현이 켜져 있다면 카트리지는 BOOT 명령어를 써서 불러들일 수 있습니다.
 완전하게 지원하지는 않습니다.



IPX

 DOSBox의 설정 구성 파일에서 IPX 네트워크가 켜져 있어야 합니다.

 내부 DOSBox 프로그램인 IPXNET은 모든 방식의 IPX 네트워크를 관리합니다.
 IPXNET HELP라고 입력하면 명령어들과 관련 문서를 나열하면서
 DOSBox 내부 IPX 네트워크의 도움말을 보여줍니다.

 실제로 통신망을 설정하려면, 한쪽의 시스템은 서버가 되어야 합니다.
 이것을 설정하려면, DOSBox 구문에서  IPXNET STARTSERVER를 입력하십시오.
 서버 DOSBox 세션은 알아서 그 자체가 가상 IPX 네트워크에 추가됩니다.
 다시 말해, 가상 IPX 네트워크의 일부가 되어야 하는 다른 모든 컴퓨터에 맞게,
 IPXNET CONNECT <컴퓨터 호스트 이름 또는 IP>를 입력하여야 합니다.
 예를 들어, 서버가 bob.dosbox.com에 있다면, 서버가 아닌 시스템 쪽에서
 IPXNET CONNECT bob.dosbox.com이라고 입력하십시오.

 Netbios가 필요한 게임을 돌리려면 노벨(Novell)사의 NETBIOS.EXE가 필요합니다.
 위에서 말했던 IPX에 연결하려면 "netbios.exe"를 실행하십시오.

 아래에 IPXNET 명령어 참조가 나와 있습니다: 

 → IPXNET CONNECT 
 IPXNET CONNECT 다른 DOSBox 세션에서 실행되고 있는 IPX Tunneling 서버로 연결합니다.

 "주소" 매개 변수는 IP 주소나 서버 컴퓨터의 호스트 이름을 지정합니다. 사용할 UDP 포트도 지정할 수 있습니다.
 기본값으로 IPXNET는 213 포트, IPX Tunneling용으로 할당된 IANA 포트를 연결할 때 사용합니다. 

 ※ IPX CONNET 섹션은 ▼ 
 IPXNET CONNECT 주소 <포트> 

 → IPXNET DISCONNECT 
 IPXNET DISCONNECT는 IPX Tunneling 서버와의 연결을 끊습니다.

 ※ IPXNET DISCONNECT의 섹션은 ▼ 
 IPXNET DISCONNECT 

 → IPXNET STARTSERVER
 IPXNET STARTSERVER를 시작하면 IPX Tunneling 서버는 DOSBox 세션에 있게 됩니다.
 기본으로 서버가 바뀌어도 이 서버는 UDP 포트 213의 연결을 받아들입니다.
 서버가 시작되면, DOSBox는 자동으로 IPX Tunneling 서버에 클라이언트 연결을 시작합니다.

 ※ IPXNET STARTSERVER의 섹션은 ▼ 
 IPXNET STARTSERVER <포트> 

 서버가 라우터 뒤에 있다면, UDP 포트 <포트>는 그 서버 컴퓨터에서 먼저 포워드되어야 합니다.

 리눅스/유닉스 기반의 시스템에서는 1023보다 더 작은 값의 포트 번호는 루트 권한으로만 쓰일 수 있습니다.
 따라서 이러한 시스템을 쓰신다면 1023보다 더 큰 값으로 포트 번호를 지정하십시오.

 → IPXNET STOPSERVER 

 IPXNET STOPSERVER 는 IPX Tunneling 서버를 이 DOSBox 세션에서 중지합니다.
 다른 연결들이 모두 종료되었는지 미리 살펴 보아야 합니다.
 왜냐하면 서버를 중지해도 다른 컴퓨터가 IPX Tunneling 서버를 여전히 사용할 수 있기 때문입니다. 

 ※ IPXNET STOPSERVER의 섹션은 ▼ 
 IPXNET STOPSERVER 

 → IPXNET PING 

 IPXNET PING 은 Ping 요청을 IPX Tunneled 통신망을 통해 전송합니다.
 응답할 때에는 연결된 다른 모든 컴퓨터들이 Ping에 응답할 것이고 Ping 메시지를 주고 받는 데
 시간이 얼만큼 걸렸는지 알려 줍니다.

 ※ IPXNET PING의 섹션은 ▼ 
 IPXNET PING 

 → IPXNET STATUS 

 IPXNET STATUS 는 DOSBox 세션의 현재 상태를 IPX Tunneling 네트워크에 알려 줍니다.
 네트워크로 연결된 컴퓨터의 목록을 보려면 IPXNET PING 명령어를 사용하십시오. 

 ※ IPXNET STATUS의 섹션은 ▼ 
 IPXNET STATUS 



KEYB [키보드 레이아웃 코드 [코드 페이지 [코드 페이지 파일]]]
 키보드 레이아웃을 바꿉니다. 키보드 레이아웃에 대한 더 자세한 정보를 보려면
 구문 8번 "키보드 레이아웃"을 읽어 보십시오.

 [키보드 레이아웃 코드]
 5개 이하의 문자열들을 이루는 레이아웃 코드입니다.
 이를테면 PL214 (폴란드 타자수)나 PL547 (폴란드 프로그래머)가 있습니다.
 이것은 키보드 레이아웃을 결정합니다.
 DOSBox에 도입된 레이아웃 목록을 모두 보려면 여기로 들어가 보십시오:
 http://vogons.zetafleet.com/viewtopic.php?t=21824

 [코드 페이지]
 코드 페이지의 숫자입니다.
 키보드 레이아웃은 지정된 코드 페이지에 대한 지원을 제공하여야 합니다.
 숫자가 올바르지 않다면 레이아웃을 불러올 수 없습니다.
 코드 페이지가 지정되지 않으면 요청된 레이아웃에 대한 올바른 코드 페이지가
 알아서 지정됩니다.

 [코드 페이지 파일]
 DOSBox 안에 기본적으로 들어있지 않은 코드 페이지를 불러올 때 쓰입니다.
 DOSBox가 코드 페이지를 찾을 수 없을 때에만 사용할 수 있습니다.
 코드 페이지 파일이 지정되지 않으면 DOSBox 프로그램 폴더에서
 ega.cpx 파일들 (FreeDOS에서 가져와서)을 모두 넣으십시오.
 요청된 레이아웃/코드페이지에 대한 적절한 코드 페이지 파일이 자동으로
 선택됩니다.


 보기 :
  1) 폴란드 타자수 레이아웃을 읽어 들이려면 (코드 페이지 852가 알아서 주어집니다):
       keyb pl214
  2) 코드 페이지 866을 가진 러시아어 키보드 레이아웃을 읽어 들이려면:
       keyb ru441 866
     러시아어 문자열을 입력하려면 ALT-RIGHT-SHIFT를 누르십시오.
  3) 코드 페이지 850을 가진 프랑스어 키보드 레이아웃을 읽어 들이려면
      (코드 페이지의 위치는 EGACPI.DAT 안에 정의되어 있습니다):
       keyb fr189 850 EGACPI.DAT
  4) 코드 페이지 858을 읽어 들이려면 (키보드 레이아웃 없이):
       keyb none 858
     freedos keyb2 유틸리티를 사용해서 코드 페이지를 바꿀 수도 있습니다.



더 자세한 정보를 보려면 프로그램의 매개 변수에 /? 명령어를 사용하십시오.

================
5. 바로가는 키:
================

ALT-ENTER     전체 화면에서 창 / 창에서 전체 화면
ALT-PAUSE     잠깐 멈춤 (ALT-PAUSE를 다시 누르면 다시 원래대로 돌아갑니다)
CTRL-F4       마운트된 플로피 CD 이미지들을 바꿉니다. 모든 드라이브에 대한 드라이브 캐시를 다시 불러옵니다.
CTRL-ALT-F5   화면의 동영상 녹화 실행 / 중지 (AVI)
CTRL-F5      스크린샷 저장 (PNG)
CTRL-F6       소리 출력을 웨이브(WAV) 파일로 기록 / 중지
CTRL-ALT-F7   OPL 녹음 명령 실행 / 중지
CTRL-ALT-F8   MIDI 녹음 명령 실행 / 중지
CTRL-F7       프레임 무시 줄임
CTRL-F8       프레임 무시 높임
CTRL-F9       DOSBox 끝내기
CTRL-F10      마우스 잠금 / 잠금 풀기
CTRL-F11      가상 구현 느리게 (사이클 줄임)
CTRL-F12      가상 구현 빠르게 (사이클 늘림)
ALT-F12       속도 제한 해제 (터보 단추 / 빨리감기)
CTRL-ALT-HOME DOSBox 다시 시작
F11, ALT-F11 (machine=cga) NTSC 출력 모드의 tint 변경***
F11              (machine=hercules) amber, green, white 색***

**알림 : Ctrl-F12 키를 너무 많이 눌러서, 또는 DOSBox.Conf의 [cpu]의 cycles 값을 너무 큰 값으로
       지정하여 여러분이 가지고 있는 컴퓨터의 최대 성능의 한도를 넘어가버리면,
       오히려 에뮬레이션의 속도를 떨어뜨릴 수 있습니다.
       이 CPU 사이클 속도의 알맞은 값은 컴퓨터마다 다르며 표준으로 잡혀있지 않습니다.
** 알림: 여유로운 CPU 리소스가 필요합니다. 리소스가 많을수록 더 빠릅니다.
        그러므로 cycles=max를 사용한다든지 너무 높은 고장값을 cycles에 준다고 하여
        속도 문제가 해결이 되는 것은 아닙니다. 키를 계속 눌러 보면서 동작을 살펴 보시기 바랍니다!

*** 알림: 다른 기기(machine) 종류를 사용하면서 매퍼 파일을 일찍 저장했을 경우 이러한 키들은 동작하지 않을 것입니다.
         이 경우 키들을 다시 할당하거나 키보드 매퍼를 다시 설정하십시오.

이것은 기본적인 키보드 조합입니다. 매핑 프로그램(Ctrl-F1)에서 바꿀 수 있습니다. (단락 7 매퍼 참조)

MAC OS에서 cmd-ctrl-F1와 같은 키가 동작하지 않는다면 cmd(애플 키)와 Ctrl을 함께 사용할 수 있습니다.
그러나 일부 키들은 매퍼를 통하여 키를 다시 설정하여야 할 수도 있습니다. (리눅스에서도)

저장된 파일들은 다음의 위치에서 찾을 수 있습니다.
  (Windows)    "시작/Windows 로고 메뉴"->"모든 프로그램"->DOSBox-0.74->Extras
  (Linux)      ~/.dosbox/capture
  (MAC OS X)   "~/Library/Preferences/capture"

DOSBox 설정 구성 파일에서 이것을 바꿀 수 있습니다.

=============
6. 조이스틱/게임패드:
=============
DOS의 표준 조이스틱 포트는 최대 4개의 축(axe)와 4개의 단추(button)를 지원합니다.
더 많이 사용할 경우 설정 구성 파일을 수정하여야 합니다.

DOSBox가 다른 종류의 조이스틱/게임패드를 강제로 사용하게 하려면
[joystick] 안의 joysticktype에 다음 값을 넣으면 됩니다.

  none - 컨트롤러 지원을 사용하지 않습니다.

  auto - (기본값) 하나 이상의 컨트롤러가 연결되어 있는지를 자동으로 알아냅니다:
            한 개: 4axis 설정이 사용됩니다.
            두 개: 2axis 설정이 사용됩니다.

  2axis - 두 개의 컨트롤러가 연결되어 있으면 2개의 축과 2개의 단추가 있는 조이스틱을
            가상으로 구현합니다. 하나의 컨트롤러만 연결되어 있다면 2개의 축과 2개의 단추가
            있는 조이스틱을 가상으로 구현합니다.

  4axis - 첫 번째 컨트롤러만 지원하며 4개의 축에 4개의 단추가 있는 조이스틱이나
            2개의 축에 6개의 단추가 있는 게임패드를 가상으로 구현합니다.

  4axis_2 - 두 번째 컨트롤러만 지원합니다.

  fcs - 첫 번째 컨트롤러만 지원하며 3개의 축과 4개의 단추, 그리고 하나의 햇(hat)이 있는
         ThrustMaster Flight Control System을 지원합니다.

  ch - 첫 번째 컨트롤러만 지원하며 4개의 축과 6개의 단추, 그리고 하나의 햇(hat)이 있는
         CH 플라이트스틱을 가상으로 구현합니다. 그러나 동시에 단추 하나를 초과하여
        동시에 누를 수는 없습니다.

  또, 게임 안에서 컨트롤러를 올바르게 설정하여야 합니다.

  조이스틱 설정이 없는 매퍼 파일을 저장하였거나 다른 조이스틱 설정을 갖춘 매퍼 파일을 사용하면
  DOSBox 매퍼 파일을 다시 설정하지 않는 한 새로운 설정은 올바르게 동작하지 않거나 완전히
  동작하지 않을 것입니다.

  컨트롤러가 DOSBox 밖에서 올바르게 동작하지만 DOSBox 안에서 올바르게 캘리브레이션(calibration)
  과정을 거치지 않았다면 DOSBox 설정 구성 파일(DOSBox.Conf)의 timed 설정값을 바꿔 보십시오.


=============
7. 매퍼:
=============

DOSBox 매핑 프로그램을 시작할 때 Ctrl-F1 키(5번 구문 바로가기 키 참고) 또는 명령 줄 매개변수에다
-startmapper를 추가하여(구문 3 명령 매개변수 참고) 가상 키보드와 가상 조이스틱을 지정할 수 있습니다.
가상 키보드와 가상 조이스틱이 화면에 나타납니다.

이러한 가상 장치들은 DOSBox에서 쓰이는 키와 일치하며 DOS 응용 프로그램에 보고합니다.
마우스로 키를 누르면 왼쪽 아래 모서리에서 키보드의 어떠한 키가 그 키와
일치하는지를 볼 수 있습니다.

Event: EVENT
BIND: BIND (손가락으로 누르는 실제 키 / 단추 / 축)
                        Add   Del
mod1  hold                    Next
mod2
mod3


EVENT
    DOSBox에서 실행하고 있는 응용 프로그램에 보고할 해당 키나 조이스틱의 축/단추/햇
    (게임하는 동안에 일어나는 이벤트 - 예: 총 쏘기/점프/걷기)

BIND
    EVENT와 연결된 사용자의 실제 키보드의 키 또는 실제 조이스틱의 축/단추/햇
   (SDL이 보고합니다)

mod1,2,3
    수정 키들입니다. BIND를 누르는 동안 눌러야 하는 키들입니다.
    mod1 = CTRL 이고 mod2 = ALT 입니다.
    일반적으로 여러분이 DOSBox의 단축키를 바꾸고자 할 때 사용하시면 됩니다.
Add
    이 EVENT에 새로운 BIND를 추가합니다.
    기본적으로 DOSBox에서 EVENT 키를 만들어내는 '사용자의 키보드' 에서 키를,
    또는 '조이스틱의 단추 눌림, 축/햇 이동' 이벤트를 추가합니다.
Del 
    BIND를 이 EVENT로 삭제합니다.
    EVENT가 BINDS를 가지고 있지 않으면 DOSBox에서 이 이벤트를 입력할 수 없습니다.
    다시 말해, 키를 입력하거나 조이스틱을 동작시킬 수 없습니다.
Next
    이 EVENT로 매핑된 BINDS들의 목록을 통해 계속 반복됩니다.



* 보기
물음1. DOSBox에서 Z를 입력하면 X로 뜨게 하고 싶습니다..
풀이. 마우스로 키보드 매퍼에 있는 Z를 누르십시오. 그리고 "Add"를 누르십시오.
        그런 다음에 키보드에서 X 키를 누르십시오.

물음2. "Next"를 두 번 누른다면 여러분이 키보드의 Z를 입력할 때 DOSBox에서 Z가 입력되는 것을 알 수 있습니다.
풀이. 그러므로 다시 Z를 누르고 키보드에서 Z를 사용할 수 있을 때까지 "Next"를 누르십시오.
          이제 "Del"을 누르십시오.

물음3. DOSBox에서 입력하고자 할 때, 여러분은 X를 누르면 ZX로 뜨는 것을 볼 수 있습니다.
풀이. 키보드 상의 X는 여전히 X로 매핑이 되어 있습니다!
        키보드 매퍼의 X를 누른 뒤, 매핑된 키 X를 찾을 때까지 "Next"로 계속 찾아 보십시오.
        그리고 "Del"키를 누르십시오.

조이스틱 매핑 보기:
  조이스틱이 장착되어 있고 DOSBox에서 제대로 동작하며 몇 가지 키보드 전용 게임을 조이스틱으로
  즐기고 싶다고 칩시다. (게임이 키보드의 방향키로 제어된다고 가정할 때)

    1) 매핑 프로그램을 열고 화면 왼쪽의 키보드 방향키들 가운데 하나를 누르십시오.
       EVENT는 key_left가 되어야 합니다. 이제 Add를 누르고 각 방향으로
       조이스틱을 움직이십시오. 이것은 이벤트를 BIND에 추가하는 방법입니다.
    2) 매핑하지 않았던 나머지 방향 단추를 또한 추가하여야 하므로
        위의 방법을 되풀이 하십시오. 조이스틱의 단추(Fire/Jump)도 물론 매핑할 수 있습니다.
    3) Save를 누르고 Exit을 눌러 게임을 실행하십시오.

  몇몇 비행 시뮬레이션 게임들이 조이스틱의 위/아래 이동이 여러분이 좋아하지 않는
  방식을 사용하기 때문에, 또 게임 자체에서 구성할 수 없기 때문에
  조이스틱의 y축을 바꾸고 싶다고 칩시다.

    1) 매핑 프로그램을 열고 첫 번째 조이스틱 영역 안에 있는 Y-을 누르십시오.
       EVENT는  jaxis_0_1- 이 되어야 합니다.
    2) Del을 눌러 현재의 Bind를 지웁니다. 그리고 Add를 누르고 조이스틱을 아래로 이동합니다.
        새로운 Bind가 만들어졌습니다.
    3) Y+에 맞춰서 이 방법을 되풀이하십시오.
        그리고 레이아웃을 저장하고 게임을 실행하십시오.

d-pad/hat의 어떠한 것이든 다시 매핑하고 싶으면 설정 구성 파일(DOSBox.Conf)에서
joysticktype=auto를 joysticktype=fcs로 바꾸어야 합니다. 이것은 다음 DOSBox 버전에서
개선될 것입니다.

"Save"를 눌러서 기본 키보드/조이스틱 매핑에서 사용자가 변경한 사항들을 따로 저장할 수 있습니다.

DOSBox는 보통 DOSBox.Conf에 지정된 위치를 mapperfile=mapper.txt 로 잡고 있습니다.
(즉, 위의 값을 사용자가 수정하면 그 수정했던 내용을 mapper.txt 파일로 저장한다는 뜻입니다)
DOSBox를 시작하면 DOSBox.Conf 안에 있는 mapperfile= 뒤에 지정된 파일의 내용을 불러옵니다.


====================
8. 키보드 레이아웃
====================

다른 키보드 레이아웃으로 바꾸려면 DOSBox.Conf 안에 있는 [dos] 섹션에 있는
"keyboardlayout"의 값을 바꾸거나 DOSBox 내부 프로그램인 keyb.com을 이용하십시오.
두 방법 모두 DOS 호환 언어 코드를 가져 옵니다. (아래에 나와 있습니다)
다만 코드 페이지는 keyb.com로만 바꿀 수 있습니다.  (구문 4 : 내부 프로그램)

기본 keyboardlayout=auto는 현재 Windows에서만 동작합니다.
이 언어는 운영 체제의 언어에 따라 선택되지만 키보드 레이아웃을 감지되지 않습니다.

레이아웃 바꾸기
  수 많은 키보드 레이아웃과 코드 페이지를 기본으로 지원합니다.
  이 때 DOSBox는 레이아웃 검색자가 지정되어야 합니다.
  (보기 : DOSBox 설정 구성 파일에서 keyboardlayout=PL214 지정하거나
            DOSBox 명령 프롬프트에서 "keyb PL214"라고 입력) DOSBox에서 사용할
            수 있는 키보드 레이아웃 목록은 여기에 있습니다:
            http://vogons.zetafleet.com/viewtopic.php?t=21824

 몇몇 키보드 레이아웃들(예를 들어 레이아웃 GK319 코드 페이지 869와 레이아웃 RU441
 코드 페이지 808)은 이중 레이아웃을 지원합니다. 이 기능은 왼쪽 ALT-오른쪽 SHIFT를
 눌러서 하나의 레이아웃을 접근하거나 왼쪽 ALT-왼쪽-SHIFT를 눌러 다른 레이아웃에 접근할
 수 있습니다. LT456 코드페이지 771과 같은 일부 키보드 레이아웃은 이러한 레이아웃을
 지원하며 왼쪽 ALT+왼쪽 CTRL로 접근할 수 있습니다.

지원하는 외부 파일
  Freedos .kl 파일들(freedos keyb2 키보드 레이아웃 파일)을 비롯하여
  사용할 수 있는 .kl 파일로 구성되어 있는 Freedos keyboard.sys/keybrd2.sys/keybrd3.sys
  라이브러리를 지원합니다.
  DOSBox에 내장된 레이아웃이 어떠한 까닭으로 동작하지 않으면
  http://www.freedos.org 에서 미리 컴파일된 키보드 레이아웃을 살펴 보시기 바랍니다.

  .CPI (MSDOS 호환 코드 페이지 파일)과 .CPX (UPX로 압축된 Freedos 코드 페이지 파일)
  둘 다 쓸 수 있습니다. 몇몇의 코드 페이지는 DOSBox에 들어 있기 때문에
  외부 코드 페이지 파일을 따로 가져다 쓰지 않으셔도 됩니다.
  또는 다른 사용자가 만든 코드 페이지 파일을 써야 한다면 DOSBox 구성 파일이 있는
  디렉터리에 복사하여 DOSBox가 접근할 수 있게 하여야 합니다.
  10개의 모든 ega.cpx 파일들 (FreeDOS에서 가져옴)이 DOSBox 폴더에 있으면
  요청된 레이아웃/코드페이지에 대한 적절한 코드 페이지 파일이 자동으로
  선택됩니다.

  따로 추가되는 레이아웃은 일치하는 .kl 파일을 DOSBox.Conf가 있는 디렉터리로
  복사하고 언어 코드를 파일 이름의 첫 번째 부분을 사용하여 추가될 수 있습니다.
  보기: UZ.KL 파일이 있다면 UZ.KL (우즈베키스탄의 키보드 레이아웃)
           DOSBox.Conf에서 "keyboardlayout=uz"라고 지정하십시오.
  이러한 키보드 레이아웃들의 통합(keybrd2.sys) 은 의도된 바와 비슷하게 동작합니다.


키보드 레이아웃은 다른 나라의 문자열들을 받아들일 수 있지만 파일 이름 안에
그 문자열들을 쓸 수 없습니다.
DOSBox 안에서 뿐만 아니라 DOSBox가 접근할 수 있는 호스트 운영 체제에
있는 파일들 안에서도 이 문자열들을 사용하는 것은 삼가시기 바랍니다.


==============================
9. 시리얼 멀티플레이어 기능
==============================

DOSBox는 시리얼 널모뎀(nullmodem) 케이블을 네트워크와 인터넷을 거쳐
가상으로 구현합니다.
DOSBox 설정 구성 파일에 있는 [serialports] 섹션에서 구성하실 수 있습니다.

널모뎀에 연결하면 한쪽은 서버, 나머지 한쪽은 클라이언트가 됩니다.

DOSBox 설정 구성 파일을 다음과 같이 구성하여야 합니다:
서버:
   serial1=nullmodem

클라이언트:
   serial1=nullmodem server:<IP 또는 서버 이름>

이제 게임을 실행하여
nullmodem (널 모뎀) / serial cable (직렬 케이블) /
already connected as multiplayer method on COM1 (COM1에 멀티플레이어 방식으로 이미 연결됨)
가운데 하나를 고르십시오. 두 컴퓨터에다 같은 보(baud) 속도를 지정하십시오.

이뿐 아니라 다음의 변수를 지정하여 nullmodem 연결 방식을 제어할 수 있습니다.
여기에 매개 변수가 모두 모여 있습니다:

 * port:         - TCP 포트 번호. 기본값: 23
 * rxdelay:      - 인터페이스가 준비되지 않았다면, 받은 데이터를 얼만큼
                        오랫동안 지연할지 결정합니다 (단위 : 밀리초)
                        DOSBox 상태 창에서 Overrun(오버런) 오류가 뜨면 이 값을 높이십시오.
                        기본값: 100
 * txdelay:      - 패킷을 보내기 전에 얼만큼 오랫동안 데이터를 받을지 결정합니다.
                        기본값 : 12 (네트워크의 부하를 덜어 줍니다)
 * server:       - 이 nullmodem은 지정된 서버에 연결되는 클라이언트가 됩니다. (server에 인수가 없으면 서버가 됩니다)
 * transparent:1 - 시리얼 데이터만 보냅니다. RTS/DTR 상호 교환(handshake)은 없습니다.
                        nullmodem이 아닌 장치에 연결할 때 사용하십시오.
 * telnet:1      - 원격 사이트가 보낸 텔넷 데이터를 해석합니다. 자동으로 투명하게 처리됩니다.
 * usedtr:1      - DOS 프로그램이 DTR을 켤 때까지 연결되지 않게 합니다.
                         모뎀 터미널을 쓸 때 유용합니다. 자동으로 투명하게 처리됩니다.
 * inhsocket:1   - 명령 줄을 거쳐 DOSBox로 보내진 소켓을 사용합니다. 자동으로 투명하게
                           처리됩니다. (Socket Inheritance: 새로운 BBS 소프트웨어 상에서
                           오래된 DOS 도어 게임을 돌릴 때 쓰입니다)

보기: TCP 포트 5000에 서버 리스닝 처리.
   serial1=nullmodem server:<IP 또는 서버 이름> port:5000 rxdelay:1000


===================================
10. DOSBox 속도 조절
===================================

DOSBox는 CPU, 사운드 카드, 그래픽 카드, 그리고 다른 여러 주변 기기들을
한꺼번에 가상으로 구현해 냅니다.
가상으로 구현되는 DOS 응용 프로그램의 속도는 CPU 사이클(얼마나 많은
함수가 가상으로 구현되느냐)이 결정합니다.

CPU 사이클 (속도 높이고 낮추기)
  cycles=auto가 기본으로 잡혀 있는데 이로써 DOSBox는
  실행하려는 게임이 될 수 있으면 많은 함수를 써야 하는 게임인지
  그렇지 않은 게임인지를 알아냅니다.

  게임이 바라던 바와 관계 없이 될 수만 있다면 무조건 함수를 많이 쓰게 하려면
  DOSBox 설정 구성 파일에서 cycles=max로 놓으십시오. (cycles=max로 두면
  가끔은 속도가 너무 빠르거나 안정적이지 않을 수도 있습니다)
  cycles=3000과 같은 고정 값을 사용하면 속도가 너무 느리거나 너무 빠를 수 있습니다.
  그러나 DOSBox 설정 구성 파일의 다른 설정을 수동으로 강제 설정할 수 있습니다.

  DOSBox 설정 구성 파일(DOSBox.Conf)의 cycles에 고정된 값을 설정하여 속도를 강제로
  낮추거나 높일 수 있습니다.  이를테면 cycles=10000으로 두면 DOSBox 창 맨 위에는
  Cpu Speed: fixed 10000 cycles가 나타납니다.
  이 상태에서 CTRL-F11을 눌러 속도를 줄이거나 CTRL-F12를 눌러 속도를 빠르게 할 수
  있습니다만 이는 컴퓨터 PC의 한 개의 코어의 힘에 제한을 받습니다.

  여러분의 실제 CPU가 얼마나 여유가 있는지 알아 보려면
  다음의 과정을 따르십시오.
  Windows 2000/XP/2003/Vista/7 : 작업 관리자 (Ctrl-Shift-Esc)
  Windows 95/98/ME : 시스템 모니터

  컴퓨터의 실제 CPU 코어 하나가 100%를 차지하고 있다면 DOSBox를 더 빠르게
  할 방법은 없습니다.  (DOSBox의 CPU가 아닌 장치들이 주는 부하를 줄이지 않는 한)

  DOSBox는 CPU의 코어 하나만 사용할 수 있으므로 이를테면 4개의 코어를 지닌 CPU를 사용한다면
  DOSBox는 다른 코어의 힘을 사용하지 못합니다.

  cycles=auto로 설정해 두고 나서 함수를 최대한 많이 쓰는 게임을 실행하거나
  cycles=max로 설정해 두었다면 DOSBox 창 맨 위에는 "CPU Cycles : Max 100% cycles"라고 나타납니다.
  이 때에는 CPU 코어가 얼마나 많은 리소스를 차지하는지 사용자가 고려할 필요는 없습니다.
  이 방식에서 % (퍼센테이지) 기반으로 사이클의 범위를 줄이거나 (CTRL-F11)
  다시 높일 수 있습니다 (CTRL-F12).

CPU 코어 (속도 향상)
  x86 기반에서 유동적으로 다시 컴파일되는 코어를 사용할 수 있습니다
  (DOSBox 설정 구성 파일에서 core=dynamic으로 설정)
  자동 감지(core=auto)가 제대로 되지 않을 때 더 나은 결과를 가져다
  줍니다. 여기에다 cycles=max로 두면 가장 나은 성능을 보여줍니다.
  그러나 cycles=20000과 같이 높은 고정값을 사용해도 됩니다.
  Dynamic 코어 때문에 오히려 느려지거나 아예 동작하지 않거나
  충돌하는 게임이 있을 수 있습니다!

그래픽 가상 구현 (속도 향상)
  VGA 에뮬레이션은 DOSBox에서 CPU 사용률을 가장 많이 차지하는 부분입니다.
  Ctrl-F8 키를 눌러서 프레임 무시 값을 높여 보십시오.
  고정된 사이클 값을 사용하면 CPU 사용률을 줄일 수 있으며 CTRL-F12키를 눌러
  사이클을 높일 수도 있습니다.
  게임 속도가 빨라질 때까지 프레임 무시값을 올리는 것을 여러 번 되풀이하십시오.
  그러나 알아둘 것은 : 프레임을 너무 많이 무시해 버리면 속도는 얻지만
  게임의 부드러움은 잃게 됩니다

사운드 가상 구현 (속도 향상)
  게임 설정 유틸리티에서 사운드를 꺼 놓아서 CPU로 가는 부하를 덜 수 있습니다.
  nosound=true로 놓는 것은 소리만 나오지 않는 것이지 사운드 장치를 끄는 것이
  아닙니다.


게다가 DOSBox가 되도록 많은 리소스를 쓸 수 있도록 DOSBox를 제외한 모든 프로그램을 닫으십시오.



고급 사이클 설정
cycles=auto와 cycles=max 설정은 시작 기본값을 다르게 지정할 수 있습니다.

섹션
  cycles=auto ["리얼모드 기본값"] ["보호 모드 기본값"%]
              [limit "사이클 최대값"]
  cycles=max ["보호 모드 기본값"%] [limit "사이클 최대값"]

보기:
  cycles=auto 5000 80% limit 20000
  이렇게 지정하면 리얼 모드 게임에서 cycles=5000을 사용합니다.
  또, 보호 모드 게임을 즐길 때 CPU를 80% 점유하면서 사이클 제한을 20000으로 둡니다.


===================
11. 문제 해결 :
===================
일반 팁:
  DOSBox 상태 창의 메시지를 확인해 보십시오. (구문 12 "DOSBox 상태 창"을 참조하십시오)

DOSBox를 실행하자마자 바로 충돌합니다:
  - output= 항목에 다른 값을 넣어 보십시오. (DOSBox 설정 구성 파일에서)
  - 그래픽 카드 드라이버와 DirectX를 업데이트해 보십시오.
  - (리눅스) 환경 변수 SDL_AUDIODRIVER를 alsa나 oss로 설정해 보십시오.

어떤 게임을 실행하면 DOSBox가 닫히면서, 어떤 메시지가 나타나거나 멈춰 있으면서 충돌합니다:
  - DOSBox를 설치한 뒤 설정 구성 파일(DOSBox.Conf)을 건드리지 마십시오.
  - 사운드를 꺼 보십시오 (게임과 함께 따라오는 사운드 구성 프로그램을 사용해 보거나,
    DOSBox 설정 구성 파일에서 sbtype=none과 gus=false를 사용해 보십시오)
  - DOSBox 설정 구성 파일의 일부 항목을 바꿔 보십시오. 예를 들면:
      core=normal
      고정 사이클 (예를 들면 cycles=10000)
      ems=false
      xms=false
    또는 위의 설정에 대한 조합.
    이와 비슷하게 machine에서도 칩셋과 기능을 제어할 수 있습니다.
    machine=vesa_nolfb
     또는
    machine=vgaonly
  - 명령 프롬프트에서 loadfix를 입력하고 게임을 실행하십시오

게임이 어떠한 오류 메시지를 보여주며 DOSBox 프롬프트로 빠져 나갑니다.
  - 오류가 적힌 말을 꼼꼼히 읽으시고 오류가 일어난 까닭을 살펴 보십시오.
  - 위의 구문들에 있는 도움말들을 따르십시오.
  - 설치 위치에 꽤 민감한 게임들이 있으므로 이 때에는 마운트를 다르게 해 보십시오.
    예를 들어 "mount d d:\oldgames\game"로 실행해 왔다면
    한 번 "mount c d:\oldgames\game"와 "mount c d:\oldgames"로도 해 보십시오.
  - 게임이 CD-ROM을 요구하면 마운트할 때 "-t cdrom"을 사용하여야 합니다.
    물론 다른 매개 변수들(ioctl, usecd, 그리고 label 스위치 등 : 적절한 사용법을 읽어볼 것)도 지정해 보십시오.
  - 게임 파일의 접근 권한을 확인해 보십시오 (읽기 전용 특성이 있다면 제거하시고 쓰기 특성이 있다면 추가하십시오)
  - DOSBox 안에서 게임을 다시 설치해 보십시오.

===================
12. DOSBox 상태 창:
===================
DOSBox 상태 창은 DOSBox가 동작하는 가운데 현재의 설정에 대한 유용한 정보를 많이 제공합니다.
오류에 대한 정보도 제공합니다. DOSBox에 문제가 있으면 이 메시지를 참고하시면 됩니다.

DOSBox 상태 창을 시작하려면:
(Windows) 상태 창은 DOSBox 기본 창과 함께 시작됩니다:
(Linux) 콘솔에서 DOSBox를 시작하여야 상태 창이 나타납니다.
(MAC OS X) DOSBox.app에 마우스 오른쪽 단추를 누르고 "패키지 콘텐츠 보기"→"콘텐츠"로 들어간 뒤→
                  "MacOS"에 들어가서→"DOSBox"를 실행하면 됩니다.


===================
13. 설정 구성 (옵션) 파일 :
===================

설정 구성 파일은 DOSBox를 처음 실행하자마자 자동으로 만들어집니다.

이 파일은 여기에 있습니다:
* Windows:  "시작 / Windows 로고 메뉴"->"모든 프로그램"->DOSBox-0.74->옵션
* Linux : ~/.dosbox/dosbox-0.74.conf
* MacOSX : ~/Library/Preferences/DOSBox Preferences

이 파일은 여러 섹션으로 나뉩니다. (항목 [] 사이에 있는 이름들로)
이 설정은 속성=값 줄로 되어 있으며 여기서 값은 DOSBox에서 바꿀 수 있는 설정 값입니다.

#와 %는 사용법이나 도움말을 뜻합니다.

CONFIG.COM로 특별한 구성 파일을 만들 수 있습니다. 이 파일은 내부 DOSBox Z: 드라이브에서
찾을 수 있습니다. CONFIG.COM를 어떻게 쓰는지 살펴 보려면 구문 4 "내부 프로그램"을 읽어 보십시오.
DOSBox를 직접 구성할 수 있도록 만들어진 구성 파일을 수정할 수 있습니다.

만들어진 구성 파일은 현재 쓰고 있는 설정값을 담고 있으며 설정을 바꾼 다음에 -conf 스위치로
저장된 파일의 새로운 값을 불러오실 수도 있습니다.
-conf 스위치에 설정 구성 파일이 지정되어 있지 않으면, DOSBox는 현재의 디렉터리에서
dosbox.conf를 찾고자 합니다. dosbox.conf가 없다면 DOSBox는 사용자 구성 파일을 불러올 것입니다.
이 파일은 존재하지 않으면 새로 만듭니다.

중요: Windows Vista/7에서 설정 구성 파일이 Windows 또는 Program Files 폴더, 또 그 하위 폴더, 아니면
        c:\에 위치하면 올바르게 동작하지 않습니다. 가장 좋은 위치는 예를 들면 C:\oldgames와 같은
        곳입니다.


======================
14. 언어 파일 :
======================

내부 DSOBox Z:에 위치한 CONFIG.COM로 언어 파일을 만들 수 있습니다.
구문 4: 내부 프로그램을 참조하십시오.

언어 파일을 읽어 보고 이해할 수 있는 항목을 원하는대로 바꾸어 보십시오.

DOSBox에다 -lang 스위치를 덧붙여서 새로운 언어 파일을 쓸 수 있고,
아니면 [dosbox] 섹션의 구성 파일의 이름을 놓을 수 있습니다.
다시 말하면 'language = 항목'이며, 여기에 파일 이름을 넣으시면 됩니다.



========================================
15. 나만의 DOSBox 만들기
========================================

소스를 내려 받으신 다음 INSTALL 파일을 천천히 읽어 보십시오.



===================
16. 고마운 분들 :
===================

THANKS 파일을 읽어 보십시오



============
17. 연락처 :
============

이 사이트에 들어가 보십시오 : 
http://www.dosbox.com
전자우편 주소는 Crew 페이지에 나와 있습니다.
