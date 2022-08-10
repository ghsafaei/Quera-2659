Program my_4
 implicit none
 INTEGER, PARAMETER :: LEN_STR = 80
 INTEGER :: i,j,counter
 CHARACTER(len=LEN_STR) :: string1
  CHARACTER(len=LEN_STR) :: string2
  WRITE (*,*) 'Please enter string as the test:'
  READ (*,*) string1
  WRITE (*,*) 'Please enter string as the sample of results:'
  READ (*,*) string2
  j=0
  do i=1,LEN_STR  
     IF ( string1(i:i) .ne. ' ') THEN
       j=j+1
     END IF
  end do
  counter=0
    DO i = 1, j
	   IF ( IACHAR ( string1(i:i) )  .ne.  IACHAR ( string2(i:i) )) THEN
	    counter=counter+1
       END IF
      
    END DO
	print *,'The total number of words are:',j
	print *,'The number of errors are:',counter
 End program
