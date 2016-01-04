
git remote add origin https://github.com/stephenajacob/recommendMovies.git
git push -u origin master

R Packages - Coursera Developing Data Products

downloaded Rtools33.exe and ran.

build package

push to GitHub

https://www.opencpu.org/api.html

GitHub CI Hook

https://public.opencpu.org/ocpu/webhook

https://public.opencpu.org/ocpu/github/stephenajacob/recommendMovies/
https://public.opencpu.org/ocpu/github/stephenajacob/TVApp/info


curl installed.

original TVApp
curl https://public.opencpu.org/ocpu/github/opencpu/tvscore/R/tv/json -H "Content-Type: application/json" -d "{\"input\" : [ {\"age\":26, \"marital\" : \"MARRIED\"}, {\"age\":41, \"marital\":\"DIVORCED\"} ]}"

My TVApp
curl https://public.opencpu.org/ocpu/github/stephenajacob/TVApp/R/tv/json -H "Content-Type: application/json" -d "{\"input\" : [ {\"age\":26, \"marital\" : \"MARRIED\"}, {\"age\":41, \"marital\":\"DIVORCED\"} ]}"

My recommendMovies
curl https://public.opencpu.org/ocpu/github/stephenajacob/recommendMovies/R/getRecommendation/json -H "Content-Type: application/json" -d "[[34,5],[87, 2], [236, 3], [312, 4], [397, 1], [650, 2]]"

