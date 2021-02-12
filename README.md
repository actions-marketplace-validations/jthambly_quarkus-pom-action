# quarkus-pom-action

Extracts important information from a Maven POM file used by Quarkus.

## Inputs

### `filename`

The path of the POM.xml file. Default `"pom.xml"`.

## Outputs

### `current_version`

The Quarkus version contained in the POM file.

### `project_group`

The Quarkus groupId contained in the POM file.

### `project_name`

The Quarkus artifactId contained in the POM file.

### `quarkus_extensions`

The Quarkus dependencies contained in the POM file.

## Example usage

```
...

 - uses: jthambly/quarkus-pom-action@v1
   id: test-run
   with:
     filename: pom.xml

- name: Print values
  run: |
    echo ${{ steps.test-run.outputs.current_version }}
    echo ${{ steps.test-run.outputs.project_group }}
    echo ${{ steps.test-run.outputs.project_name }}
    echo ${{ steps.test-run.outputs.quarkus_extensions }}

...
 
```

## Licenses

Debian (base image)
 - https://www.debian.org/social_contract#guidelines
 - https://github.com/docker-library/repo-info/tree/master/repos/debian

Apache Maven
 - https://www.apache.org/licenses/LICENSE-2.0
 - https://github.com/docker-library/repo-info/tree/master/repos/maven

Red Hat Quarkus
 - https://www.apache.org/licenses/LICENSE-2.0

GitHub Actions
 - Documentation: https://docs.github.com/en/actions/creating-actions

---

MIT License

Copyright (c) 2021 Jason Hambly

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
