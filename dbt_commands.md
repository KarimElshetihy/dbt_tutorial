## Practical dbt command cheat sheet, grouped by what you actually use them for.

| Command                | What it does                                                        |
| ---------------------- | ------------------------------------------------------------------- |
| `dbt init`             | Creates a new dbt project                                           |
| `dbt debug`            | Checks your project configuration and database connection           |
| `dbt deps`             | Installs packages from `packages.yml`                               |
| `dbt parse`            | Parses the project without running models                           |
| `dbt compile`          | Compiles Jinja + dbt SQL into executable SQL                        |
| `dbt run`              | Runs models and creates/views/tables in the target database         |
| `dbt test`             | Runs data tests and schema tests                                    |
| `dbt build`            | Runs models, tests, seeds, and snapshots in dependency order        |
| `dbt seed`             | Loads CSV files from the `seeds/` folder                            |
| `dbt snapshot`         | Runs snapshots, usually for SCD Type 2/history tracking             |
| `dbt source freshness` | Checks whether source data is fresh enough                          |
| `dbt docs generate`    | Generates dbt documentation and lineage metadata                    |
| `dbt docs serve`       | Starts a local web server to browse dbt docs                        |
| `dbt clean`            | Deletes generated folders like `target/` and `dbt_packages/`        |
| `dbt list` / `dbt ls`  | Lists dbt resources such as models, tests, sources                  |
| `dbt show`             | Runs a query/model and previews the result                          |
| `dbt run-operation`    | Executes a custom macro manually                                    |
| `dbt retry`            | Re-runs failed nodes from the previous dbt command                  |
| `dbt clone`            | Clones relations from another dbt state/environment where supported |

The commands you’ll probably use most are:

```bash
dbt debug
dbt deps
dbt run
dbt test
dbt build
dbt docs generate
dbt docs serve
```

A normal development workflow could be:

```bash
dbt debug
dbt deps
dbt build
dbt docs generate
dbt docs serve
```

You can also run only specific models:

```bash
dbt run --select stg_customers
```

or multiple models:

```bash
dbt run --select stg_customers stg_orders
```

Run a model plus everything downstream:

```bash
dbt run --select stg_customers+
```

Run a model plus everything upstream:

```bash
dbt run --select +fct_orders
```

Run upstream and downstream:

```bash
dbt run --select +fct_orders+
```

Run everything in a folder:

```bash
dbt run --select staging
```

Run by tag:

```bash
dbt run --select tag:finance
```

Exclude something:

```bash
dbt run --exclude stg_temp
```

For tests:

```bash
dbt test
```

Test one model:

```bash
dbt test --select dim_customer
```

Test sources:

```bash
dbt test --select source:raw
```

For seeds:

```bash
dbt seed
```

Reload seeds even if they already exist:

```bash
dbt seed --full-refresh
```

For incremental models, force a complete rebuild:

```bash
dbt run --full-refresh
```

or:

```bash
dbt build --full-refresh
```

For snapshots:

```bash
dbt snapshot
```

For sources:

```bash
dbt source freshness
```

For docs:

```bash
dbt docs generate
dbt docs serve
```

In Docker, you can serve docs with:

```bash
dbt docs serve --host 0.0.0.0 --port 8080
```

For inspecting your project:

```bash
dbt ls
```

Only models:

```bash
dbt ls --resource-type model
```

Only tests:

```bash
dbt ls --resource-type test
```

Only sources:

```bash
dbt ls --resource-type source
```

One especially useful distinction:

```text
dbt run
    ↓
Run models only

dbt test
    ↓
Run tests only

dbt build
    ↓
Seeds
Models
Snapshots
Tests
in dependency order
```

dbt compile
dbt ls --models state:modified --state .
dbt run --models state:modified --state .
dbt docs generate
dbt docs serve --host 0.0.0.0 --port 8080
dbt clean
dbt run -m tag:dvdrental
dbt test -m tag:test-tag
dbt run -m tag:demo_dbt --exclude tag:example

For most daily work, `dbt build` is often the most useful command because it validates the full dependency chain instead of just building models.
