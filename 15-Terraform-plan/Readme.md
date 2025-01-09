### Savings Terraform Plan To File

## Workflow

***Generate an executing plan***:
```sh
terraform plan -out=infra.plan
```
***Review the plan***
```sh
terraform show infra.plan
```
***Optionally review the JSON format***
```sh
terraform show -jsn infra.plan
```
***Apply the plan to provision infrastructure***
```sh
terraform apply infra.plan
```


## Command Description

## 1. *terraform plan -out=infra.plan*

**Description**: Generates an execution plan and saves it to a file (infra.plan) for later application

**Purpose**: This command allows you to review the changes Terraform will make without immediately applying them. By saving the plan, you ensure that only the reviewed changes are applied later.

__Usage__:
```sh
terraform plan -out=infra.plan
```
**Output**:
A binary file (infra.plan) is created, containing the details of the planned changes.

## 2. *terraform apply infra.plan*

**Description**: Applies the changes described in the previously saved execution plan (infra.plan).

**Purpose**: Ensures that only the reviewed and approved changes in the saved plan are executed, avoiding unintended modifications.

__Usage__:
```sh
terraform apply infra.plan
```

**Output**: Terraform provisions or modifies infrastructure based on the plan.
No new plan is created; it strictly uses the provided plan.

## 3. *terraform show infra.plan*

**Description**: Displays a human-readable summary of the execution plan saved in infra.plan.

**Purpose**: Allows you to review the details of the saved plan before applying it.

**Usage**:

terraform show infra.plan

**Output**:A text summary of the planned changes, including resources to be added, modified, or destroyed

## 4. *terraform show -json infra.plan*

**Description**: Outputs the execution plan in JSON format for programmatic processing or integration with other tools.

**Purpose**: Useful for automation and custom tooling that processes the Terraform plan.

**Output**: A JSON representation of the execution plan is displayed.


## 5. *terraform show -json infra.plan | jq*

**Description**: Combines the previous command with jq, a JSON processor, to parse and display the JSON output in a more readable or queryable format.

**Purpose**: Allows users to filter, search, or process the JSON output efficiently.

**Usage**:

terraform show -json infra.plan | jq

**Output**: A formatted and readable JSON output, or filtered results based on the jq query provided.