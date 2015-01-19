docker-aws-cli
=====

Sets up a container with AWS CommandLine Interface installed.

## Usage

```
$ docker run lciel/aws-cli [options] <command> <subcommand> [parameters]
```

- Use credentials from environment variables.

```
$ docker run \
    -e AWS_ACCESS_KEY_ID=XXXXX \
    -e AWS_SECRET_ACCESS_KEY=XXXXX \
    lciel/aws-cli [options] <command> <subcommand> [parameters]
```

- Use credentials from a config file.

```
$ cat .aws/config
[default]
output = json
region = ap-northeast-1
aws_access_key_id = XXXXX
aws_secret_access_key = XXXXX

$ docker run \
    -v $(pwd)/.aws:/root/.aws \
    lciel/aws-cli [options] <command> <subcommand> [parameters]
```


## Example

```
$ docker run \
    -it --rm \
    -e AWS_ACCESS_KEY_ID=XXXXX \
    -e AWS_SECRET_ACCESS_KEY=XXXXX \
    lciel/aws-cli --output json --region ap-northeast-1 elasticbeanstalk list-available-solution-stacks

{
    "SolutionStacks": [
        "64bit Amazon Linux 2014.09 v1.0.9 running PHP 5.5",
        "64bit Amazon Linux 2014.09 v1.0.9 running PHP 5.4",
...
    ]
}
```

