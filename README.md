# CaptureErrorResponse_BurpSuite

## Description
1. errorResponseExtension.py records the response in a .txt file whenever there is an api failure
2. sendToSlack.sh when executed will post the data from the .txt file to a slack channel

During the execution of the Test Suite, BurpSuite monitors all API calls being made.
Failures can sometimes occur due to backend (BE) issues, leading to API errors that cause the scripts to fail.
By recording error responses in the .txt file, this setup aids in identifying the root cause of API failures, streamlining debugging and issue resolution.

## Requirement
* BurpSuite Extension
* jython-standalone-2.7.3.jar
* Python 3.9.6

## Setup Instructions
1. Install BurpSuite
2. Configure the device with Burp to listen to network logs >> Import Burp certificate and install the CA certificate in the device

<img width="1120" alt="Screenshot 2024-01-11 at 7 16 48 PM" src="https://github.com/user-attachments/assets/8788581f-01f5-4674-b976-b221d61081b2" />

3. Download the jython-standalone-2.7.3.jar
4. Set the path

<img width="1120" alt="246cbbdf-65cf-4863-9172-495a25f8ba9b" src="https://github.com/user-attachments/assets/178b59a8-1d14-4f46-a36b-95f1fb25c9cb" />

5. Download and Install latest Python 
6. Validate on terminal >> python3 --version


