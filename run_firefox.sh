
trigger:
- master

pool:
  vmImage: 'windows-latest'

steps:
- task: katalonTask@1
  displayName: 'Execute Katalon Studio project'
  inputs:
    version: '10.3.1'
    executeArgs: '-retry=0 -testSuitePath="Test Suites/TSMobile" -browserType="Remote" -executionProfile="default" -apiKey="56b36516-6e49-4aa9-b28a-8e6e82aa105a" -orgID=368899'
