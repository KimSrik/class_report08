-- 쿼리문 중간중간 주석처리 된 부분이 있습니다.
-- 0. 초기화
drop database if exists member_db;
drop user if exists member_db@localhost;
select user from mysql.user;

-- 1. 데이터베이스 생성 / 사용 권한 설정
create database member_db;
create user member_db@localhost identified with mysql_native_password by 'member_db';
grant all privileges on member_db.* to member_db@localhost with grant option;

use member_db;

-- 2. login_info 테이블 생성
create table login_info(
	member_num integer primary key auto_increment,
    member_id varchar(18) not null unique,
    member_pass varchar(18) not null
);

-- 3. login_info 데이터 삽입
insert into login_info(member_id, member_pass)
	values('github', 'g2233');

insert into login_info(member_id, member_pass)
	values('step', 's1234');

insert into login_info(member_id, member_pass)
	values('font', 'awesome1');

insert into login_info(member_id, member_pass)
	values('pixabay', 'image');    
    
insert into login_info(member_id, member_pass)
	values('cdnjs', 'com2');    
    
insert into login_info(member_id, member_pass)
	values('jquery', 'j3132');

insert into login_info(member_id, member_pass)
	values('bxslider', 'bb22z');

insert into login_info(member_id, member_pass)
	values('bootstrap', 'get11');

insert into login_info(member_id, member_pass)
	values('hello', 'world3');    
    
insert into login_info(member_id, member_pass)
	values('swiper', 'js33');

-- 4. login_info 데이터 선택 (모든 레코드 출력)
select member_num as 회원번호, member_id as 회원아이디, member_pass as 패스워드
from login_info;

-- 5. notice 테이블을 생성
create table notice(
	notice_num integer primary key not null auto_increment,
    notice_tit varchar(40) not null,
    notice_txt varchar(100),
    notice_date date default(sysdate()),
    user_name varchar(20),
    user_num integer not null
); 

-- 6. notice 테이블 데이터 삽입
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('카카오T 앱 개편', '목적지 검색하면 택시, 대리 등 자동 추천', '김길동', 1);

insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('삼성, 갤럭시A 17일 공개', '애플 아이폰 SE 3에 맞불', '이기자', 2);    

insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('오일머니 유입', '엔씨, 넥슨 경영권 위협 없다.. 오히려 기회', '아경제', 3);

insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('삼성, 갤S22에 이어..', '갤탭S8도 GOS 업데이트 실시', '김한국', 4);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('SW업데이트에 노태문 사과까지', '삼성, GOS논란 종지부 찍을까', '한경제', 5);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('롯데정보통신', '메타버스 보안사업 진출', '김뉴스', 6);

insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('빨간불 몇초 남았지?', '서울 신호등 정보 실시간 제공', '이시스', 7);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('카카오 김범수 기부재단', '사회문제 해결 비영리 단체에 100억원 지원', '고뉴스', 8);    
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('변동성 커진 비트코인', '우크라이나 전쟁과 미국유럽의 긴축 가속화 등 외부 요인에 의해 비트코인 시세가 출렁이고 있다.', '박스트', 9);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('일주일 상승폭 또 반납..비트코인 4800만원대', '가상자산 시장이 또 다시 상승폭을 모두 반납하고 봅합세로 돌아섰다.', '김코인', 10);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('정부, 러-우크라사태 장기화..', '정부가 러시아-우크라이나 사태 장기화로 피해를 본 기업에 500억원 규모 지원', '박장기', 11);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('삼성, 갤S22 업데이트로 성능 강제제한 해제 우회 허용', '삼성전자가 스마트폰의 성능 제한 논란을 빚은 게임 옵티마이징 서비스 해제를 우회 허용하였다.', '이동아', 12);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('이제 제2의 현실이다', '넷마블표 블록체인 사업, 본격 시동', '박뉴스', 13);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('코로나 일반 의료체계로 전환..', '일반병실 입원, 신속검사로 확진 판정', '이비즈', 14);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('신비주의 애플, 한국 스타트업과 손잡았다.', '애플이 한국 스타트업과 함께 아이폰, 아이패드용 소프트웨어를 개발해 온 사실이 밝혀졌다.', '이코노', 15);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('광고보면 반값..', 'OTT 새로운 요금제 전략 통할까?', '강소현', 16);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('안랩, 메타버스 안랩월드에서 창립 27주년 기념행사', '임직원들은 원하는 시간에 PC로 안랩 월드에 접속해 다양한 콘텐츠를 감상했다고 안랩 측은 설명', '임직원', 17);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('미국, 대북부대표 대화 위한 대북제재 완화는 반대', '북한의 잇따른 무력 시위에도 대화를 위해 대북 제재를 완화하자는 주장에는 반대한다는 입장을 분명히 밝혔습니다.', '박미국', 18);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('독일, EU 러SWIFT 제재 확대 막아', '독일이 유럽연합의 러시아에 대한 국제은행간통신협회(SWIFT) 결제망 제재 확대를 막고 있는 것으로 전해졌다.', '이제재', 19);
    
insert into notice(notice_tit, notice_txt, user_name, user_num)
	values('블록체인 플랫폼', '블록체인 게임 플랫폼 간 경쟁이 불이 붙었다.', '이기자', 20);     


-- 7. notice 데이터 선택
select 	notice_num as 일련번호,
		notice_tit as 제목,
		notice_txt as 내용,
        notice_date as 작성일,
        user_name as 작성자,
        user_num as 회원번호
from notice
order by 작성일 asc, 일련번호 desc;

-- 8. notice에서 함수, 조건 사용
select substr(user_name, 1, 1) as 성, concat(count(user_name),'명') as 인원수
from notice
where substr(user_name, 1, 1) = '김';

-- 9. 데이터 삭제
delete from notice
		where notice_tit is null;
        
-- 10. 데이터 변경
update login_info
set member_pass = 'qwer1234'
where member_num = 5;

-- 회원번호 5번 패스워드 변경을 확인하기 위한 select문
-- select * from login_info;

-- 11. 인덱스 생성
create index idx_notice on notice(user_name, notice_tit);


-- 인덱스 생성 확인용 show문
-- show index from notice;

-- 12. 인덱스를 이용한 검색 효율성
select * from notice where user_name like '한경제';
-- cost : 0.71

select * from notice where user_num = 5;
-- cost : 2.25


-- 13. 뷰의 생성
create view my_view
as select login_info.member_id as 회원아이디,
notice.notice_tit as 제목,
notice.notice_txt as 내용,
notice.notice_date as 작성일,
notice.user_name as 작성자
from notice join login_info on notice.user_num = login_info.member_num
group by notice.user_num;

select * from my_view;

-- 14. 뷰의 생성
create view my_view2
as select my_view.제목,
my_view.작성일,
my_view.작성자,
my_view.회원아이디
from my_view;

select * from my_view2;

-- 15. 모든 database요소 삭제
drop database member_db;
drop user member_db@localhost;


        