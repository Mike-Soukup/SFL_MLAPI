install:
	python3 -m pip install --upgrade pip && python3 -m pip install -r requirements.txt
run_flask:
	python3 -m flask run --host=0.0.0.0
azure:
	git config --global http.postBuffer 157286400
	git gc --aggressive
	git remote remove azure
	git remote add azure https://mike-soukup-fashion-mnist-api.scm.azurewebsites.net:443/mike-soukup-fashion-mnist-api.git
	git push azure