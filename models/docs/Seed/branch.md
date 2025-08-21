{% docs branch %}

# Branch Seed

**Purpose:**  
Reference data for branch locations, loaded from a CSV seed file.

**Business Notes:**  
- Each branch is uniquely identified by `BranchID`.
- `Description` provides the name or identifier of the branch.
- `Cluster` groups branches by operational or regional clusters.
- `City`, `Province`, and `ZipCode` provide geographic details for each branch.

**Data Quality Rules:**  
- `BranchID` must be unique and not null.
- `Description`, `City`, `Province`, and `ZipCode` should always be provided.
- `Cluster` should be consistent across similar branches.

{% enddocs %}
