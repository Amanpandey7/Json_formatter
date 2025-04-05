#  JSON Formatter App

This Web Application is to validate and format JSON input provided by users. Following are the functional and non-functional requirements for client perspective

---
##  Functional Requirements

**JSON Validation**: Automatically detect and display errors for invalid JSON input.

**JSON Formatting**: Pretty-print valid JSON with consistent indentation for better readability.

**JSON Minification**: Convert valid JSON into a compact, single-line format.

**API Integration**: Utilize an AWS Lambda function for formatting and validation logic, invoked via API Gateway.

**CORS Support**: Enable Cross-Origin Resource Sharing (CORS) to allow frontend-backend communication from the browser.

**Secure Communication**: Use HTTPS via Amazon API Gateway to ensure all data transmissions are encrypted and secure.

---

##  Non-Functional Requirements

**Scalability**: Utilizes serverless AWS services (S3, Lambda, API Gateway) that automatically scale based on traffic and usage.

**Availability**: Ensures high availability and reliability through fully managed, redundant AWS infrastructure.

**Performance**: Provides fast and responsive processing using lightweight Lambda functions with minimal cold start time.

**Security**: Follows the principle of least privilege for IAM roles and enforces secure access to S3 and Lambda.

**Cost Efficiency**: Adopts a pay-as-you-go pricing model, incurring no charges during idle periods.

**Simplicity**: Maintains a lightweight architecture with no need for complex build tools or frameworks, enabling quick deployment and maintenance.

---
##  Architecture Diagram



![Untitled Diagram drawio](https://github.com/user-attachments/assets/a91d43ea-731d-4efb-8294-95525022e992)


| Component        | Tech Used          |
|------------------|--------------------|
| Frontend Hosting | S3 (Static Website)|
| Backend Logic    | AWS Lambda (Node.js)|
| API Interface    | Amazon API Gateway |
| Deployment       | IaC (Terraform) |
| Security         | CORS, IAM roles     |

---

##  Features

- Format JSON with 2-space indentation
- Minify JSON (remove whitespace)
- Validate JSON input and show detailed error messages
- Secure REST API endpoint using AWS Lambda + API Gateway
- Highly Available, Scalable and Cost Efficient design

---

