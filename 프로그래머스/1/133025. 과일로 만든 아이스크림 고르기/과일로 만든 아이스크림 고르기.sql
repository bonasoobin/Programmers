-- 코드를 입력하세요
SELECT I.FLAVOR
FROM ICECREAM_INFO I, FIRST_HALF F
WHERE I.FLAVOR = F.FLAVOR AND F.TOTAL_ORDER > 3000 AND I.INGREDIENT_TYPE = 'fruit_based'
ORDER BY F.TOTAL_ORDER DESC;