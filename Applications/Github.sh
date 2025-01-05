installGitHubReleasedPackage() {
    file=$(downloadLatestGitHubRelease $1)
    apt install "$PWD/$file"
    rm -f "$PWD/$file"
}

downloadLatestGitHubRelease() {
    url=$(latestGitHubRelease $1)
    file=$(basename $url)
    wget -qO- $url > ${file}
    echo $file
}

latestGitHubRelease() {
    echo $(wget -qO- --max-redirect=10 $1 | jq -r '.[] | select(.prerelease == false) | .assets[]' | grep -wo "https.*x86_64.deb\|https.*amd64.deb\|https.*amd64.*.deb" | head -n 1)
}
