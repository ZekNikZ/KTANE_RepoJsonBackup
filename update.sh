# Download the latest version of the JSON
if curl -o raw.json https://ktane.timwi.de/json/raw
then
    # Successful download, upload to GitHub
    echo 'Download complete'
    git add .
    if git commit -m "$(date)"
    then
        git push
        echo 'GitHub upload complete'
    else
	echo 'No changes detected'
	exit 1
    fi
else
    # Failed to download
    echo 'Download failed'
    exit 1
fi
