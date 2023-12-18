# team-tamia/team-tamia-oss-chart-fullstack

> 
> A generic Helm chart to deploy a standardized full stack application: a frontend app, a backend app and a database.
> 
> 🚀 Powered by the [Tamia Team](https://tamia.team), 🇫🇷.
> 

**Contributing 🙂 and/or [sponsoring]((https://github.com/sponsors/tamia-team)) 🥰 are welcome!**

## Table of Contents

- [Synopsis](#synopsis)
- [Requirements](#requirements)
  - [Create a secret to store security settings of the database](#requirements-secretstore) 
  - [Create a volume to persist your configuration and various data](#requirements-volume)
- [Basic usage](#basic-usage)
- [Advanced usage](#advanced-usage)
- [Installation](#installation)
- [Build](#build)
- [Tests](#tests)
- [Compatibility](#compatibility)
- [History](#history)
- [Issues](#issues)
- [Found a bug?](#found-a-bug)
- [Contributing](#contributing)
- [Resources](#resources)
- [Credits](#credits)
- [❤️ Support our work!](#support-out-work)
- [History](#history)
- [License](#license)

## Synopsis 

A generic Helm chart to deploy: a frontend app, a backend app and a database.

## <a name="requirements" /> Requirements

### <a name="requirements-secretstore" /> Create a secret to store security settings of the database

Create a file named `mongo-secrets.yaml` containing:

```yaml
---
apiVersion: v1
data:
  password: cGFzc3dvcmQxMjM= //password123
  username: YWRtaW51c2Vy //adminuser
kind: Secret
metadata:
  creationTimestamp: null
  name: mongo-creds
```

Then create the secrets in your Kubernetes cluster:

```shell
kubectl apply -f mongodb-secrets.yaml
```

### <a name="requirements-volume" /> Create a volume to persist your configuration and various data

**Warning ! You must have previously created a persistent volume on your Kubernetes cluster!** (`pv` in the following example). 

Create a YAML file (`mongo-pvc.yaml`) containing:

```yaml
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: pvc
spec:
  storageClassName: ""
  accessModes:
    - ReadWriteOnce 
  volumeName: pv
  resources:
    requests:
      storage: 1Gi
```

Apply this to Kubernetes:

```shell
kubectl create -f mongodb-pvc.yaml
```


## <a name="basic-usage" /> Basic usage

## <a name="advanced-usage" /> Advanced usage

## <a name="tests" /> Tests

You can test your chart and visualize generated Kubernetes YAML file using default or provided values:

```shell
helm template --debug consistency-fullstack/
```

## <a name="compatibility" /> Compatibility

Tested using:

- MicroK8S v1.27.2
- Helm v3.12.1
- Kubectl v1.26.0

## <a name="history" /> History

Please refer to [CHANGELOG](./CHANGELOG.md)

## <a name="issues"> Issues

Feel free to [submit issues](https://github.com/tamia-team/team-tamia-oss-chart-fullstack/issues) and enhancement requests.

## Found a bug?

You can raise a defect here. Note that this is an open source project, so **the fastest way to fix an issue is to fix it yourself and to propose a pull request**. As with any open source project, support is never free - it is just payed for from a volunteer's spare time or through a sponsoring organisation.

Some companies and individuals who find that Serenity BDD helps in their daily work choose to give back by sponsoring the project in different capacities. Bug fixes or change requests coming from sponsors are generally prioritised over other requests.

**NOTE:** From time to time, old issues that have not been active for over 6 months will be automatically closed. If one of these issues affects your project and is still reproducible with the latest version of Serenity, feel free to reopen.

## <a name="contributing" /> Contributing

Please refer to project's style guidelines and guidelines for submitting patches and additions. In general, we follow the "fork-and-pull" Git workflow.

1. **Fork** the repo on GitHub
2. **Clone** the project to your own machine
3. **Commit** changes to your own branch
4. **Push** your work back up to your fork
5. Submit a **Pull request** so that we can review your changes

**NOTE**: Be sure to merge the latest from "upstream" before making a pull request!

## <a name="resources" /> Resources

- [How To Deploy MongoDB on Kubernetes – Beginners Guide](https://devopscube.com/deploy-mongodb-kubernetes/)

## <a name="credits" /> Credits

- [Bibin Wilson](https://devopscube.com/author/bibinwilson/)

## <a href="support-out-work" /> ❤️ Support our work!

You can help out by sponsoring the [the Deepnox Team](https://tamia-team)'s work directly here: [:heart: Sponsor](https://github.com/sponsors/tamia-team)

Take a look at [this article](https://opensource.guide/how-to-contribute/#communicating-effectively) for more information.

## License

>
> Copyright 2023 [Tamia SAS](https://tamia.team), Saint-Etienne 42100, France # tamia-team/oss-imagemaker

>
> An open source set of utilities to simplify and improve making image to run in a containers context. 
>
> 🚀 Powered by the [Tamia Team](https://tamia.team).
>

## Synopsis

An open source set of utilities to simplify and improve making image to run in a containers context.
Useful to build adapted and optimized images for multiple environments: local devel, staging, production...

## License

>
> Copyright 2023 [Tamia SAS](https://tamia.team), Saint-Etienne 42100, France 🇫🇷
>
> Permission is hereby granted, free of charge, to any person obtaining a copy 
> of this software and associated documentation files (the “Software”), to 
> deal in the Software without restriction, including without limitation the 
> rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
> sell copies of the Software, and to permit persons to whom the Software 
> is furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in 
> all copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
> FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>
> Except as contained in this notice, the name of the "Tamia SAS" shall not
> be used in advertising or otherwise to promote the sale, use or other dealings
> in this Software without prior written authorization from the Tamia SAS company.
>


>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the “Software”), to
> deal in the Software without restriction, including without limitation the
> rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
> sell copies of the Software, and to permit persons to whom the Software
> is furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
> FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
>
> Except as contained in this notice, the name of the "Deepnox SAS" shall not
> be used in advertising or otherwise to promote the sale, use or other dealings
> in this Software without prior written authorization from the Deepnox SAS company.
>



