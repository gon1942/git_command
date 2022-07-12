
### badgesLine

<h1 id="badge"></h1>


# git_command

git 명령어 모음

저장소 생성
```bash
git init
```

원격 저장소로부터 복제
```bash
git clone remoteurl
```

변경 사항 체크
```bash
git status
```

특정 파일 스테이징
```bash
- git add 파일명
- git add * 
```

커밋
```bash
- git commit -m “내용” 
- git push origin master 
```

원격저장소 추가
```bash
git remote add origin 원격서버주소
```

커밋 정렬(rebase)
```bash
git rebase -i HEAD~3 (최신 3개의 커밋을 하나로 정렬
```

커밋 메세지 수정
```bash
- git commit --amend ( editor로 수정 ) 
- git commit --amend -m 커밋내용 ( 바로 수정 )
- git push
```

브랜치 목록
```bash
- git branch  (로컬)
- git branch -r (리모트)  
- git branch -a (로컬  리모트)
```
브랜치 생성
```bash
- git branch new master (master > new branch)
```
브랜치 삭제
```bash
- git branch -D DeleteBranchName (local)
- git push origin :DeleteBranchName (remote)

- git push origin --delete DeleteBranchName
```
