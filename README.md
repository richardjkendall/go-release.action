# Go Release Binary GitHub Action

Automate publishing Go build artifacts for GitHub releases through GitHub Actions

This is a fork of https://github.com/ngs/go-release.action

I've updated the go version to 1.14.2

```yaml
# .github/workflows/release.yaml

on: release
name: Build
jobs:
  release-linux-386:
    name: release linux/386
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: ngs/go-release.action@v1.0.1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: "386"
        GOOS: linux
  release-linux-amd64:
    name: release linux/amd64
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: ngs/go-release.action@v1.0.1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: amd64
        GOOS: linux
  release-darwin-386:
    name: release darwin/386
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: ngs/go-release.action@v1.0.1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: "386"
        GOOS: darwin
  release-darwin-amd64:
    name: release darwin/amd64
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: ngs/go-release.action@v1.0.1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: amd64
        GOOS: darwin
  release-windows-386:
    name: release windows/386
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: ngs/go-release.action@v1.0.1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: "386"
        GOOS: windows
  release-windows-amd64:
    name: release windows/amd64
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: compile and release
      uses: ngs/go-release.action@v1.0.1
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        GOARCH: amd64
        GOOS: windows
```
