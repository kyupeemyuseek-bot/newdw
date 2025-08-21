import json
from pathlib import Path

# Paths
target_dir = Path("target")
run_results_path = target_dir / "run_results.json"
output_path = target_dir / "dbt_data_quality_report.html"

# Load dbt run results
with open(run_results_path, "r") as f:
    results = json.load(f)

# HTML header
html = """
<html>
<head>
    <title>DBT Data Quality Report</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        h1 { color: #333; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .success { background-color: #d4edda; color: #155724; }
        .fail { background-color: #f8d7da; color: #721c24; }
        .error { background-color: #fff3cd; color: #856404; }
    </style>
</head>
<body>
    <h1>DBT Data Quality Report</h1>
    <table>
        <tr>
            <th>Test</th>
            <th>Model / Source</th>
            <th>Status</th>
            <th>Failing Rows</th>
            <th>Execution Time (s)</th>
            <th>Message</th>
        </tr>
"""

# Fill table with test results
for r in results.get("results", []):
    status = r.get("status", "unknown")
    execution_time = round(r.get("execution_time", 0), 2)
    unique_id = r.get("unique_id", "")
    failures = r.get("failures", "")
    message = r.get("message", "")

    # Parse model/source from unique_id
    model = unique_id.split(".")[-1] if "." in unique_id else unique_id

    row_class = "success" if status == "pass" else "fail" if status == "fail" else "error"

    html += f"""
        <tr class="{row_class}">
            <td>{unique_id}</td>
            <td>{model}</td>
            <td>{status}</td>
            <td>{failures if failures != "" else "-"}</td>
            <td>{execution_time}</td>
            <td>{message if message else "-"}</td>
        </tr>
    """

# Close HTML
html += """
    </table>
</body>
</html>
"""

# Save
with open(output_path, "w") as f:
    f.write(html)

print(f"Data quality report saved to {output_path}")
