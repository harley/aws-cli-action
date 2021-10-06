# GitHub Action for `awscli`

It's weird this isn't available on https://github.com/aws-actions yet. There is an [open issue](https://github.com/aws/aws-cli/issues/4835) on aws/aws-cli repo too. 

For now, roll our own:

## Usage

```yml
- name: S3 sync
  uses: harley/aws-cli-action@main
  with:
    args: s3 --delete sync s3://appbucket-prod s3://appbucket-stag
    # another example: upload a local folder to remote:
    # args: s3 --delete sync --acl public-read build/ s3://appbucket-build
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_DEFAULT_REGION: "ap-southeast-1"
```
