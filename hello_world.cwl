#!/usr/bin/env cwl-runner

# Nice example from https://rabix.io/cwl-patterns.html

cwlVersion: v1.2
class: CommandLineTool

hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/python:3.8--1

  InitialWorkDirRequirement:
    listing:
      - entryname: myscript.py
        entry: |-
          print("$(inputs.message)")

baseCommand:  ["python", "myscript.py"]

inputs:
  message:
    type: string
    inputBinding:
      position: 1

outputs: []
