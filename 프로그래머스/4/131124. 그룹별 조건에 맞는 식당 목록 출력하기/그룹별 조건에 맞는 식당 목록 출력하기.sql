SELECT P.MEMBER_NAME, R.REVIEW_TEXT, DATE_FORMAT(R.REVIEW_DATE, '%Y-%m-%d') REVIEW_DATE
FROM MEMBER_PROFILE P JOIN REST_REVIEW R
ON P.MEMBER_ID = R.MEMBER_ID
WHERE P.MEMBER_ID IN (SELECT MEMBER_ID FROM REST_REVIEW GROUP BY MEMBER_ID HAVING COUNT(*) = (SELECT COUNT(*) FROM REST_REVIEW GROUP BY MEMBER_ID ORDER BY COUNT(*) DESC LIMIT 1))
ORDER BY R.REVIEW_DATE, R.REVIEW_TEXT;

