CD_VERSION=$(curl -s https://googlechromelabs.github.io/chrome-for-testing/LATEST_RELEASE_STABLE)
curl -L https://storage.googleapis.com/chrome-for-testing-public/"$CD_VERSION"/linux64/chromedriver-linux64.zip > chromedriver.zip

touch "${CD_VERSION}.txt"

unzip chromedriver.zip
cp -f chromedriver-linux64/chromedriver chromedriver
rm -rf chromedriver-linux64 chromedriver.zip
