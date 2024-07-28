-- 코드를 입력하세요
SELECT DISTINCT A.APNT_NO, P.PT_NAME, P.PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM PATIENT P, DOCTOR D, APPOINTMENT A
WHERE A.PT_NO = P.PT_NO AND D.DR_ID = A.MDDR_ID 
AND D.MCDP_CD = 'CS' AND A.APNT_CNCL_YN = 'N' 
AND A.APNT_YMD LIKE '2022-04-13%'
ORDER BY A.APNT_YMD;