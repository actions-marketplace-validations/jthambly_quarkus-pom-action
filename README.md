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