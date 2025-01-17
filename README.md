# Ash Nested Calculation Bug Reproduction

This repository demonstrates a crash issue related to nested calculations not being properly loaded in Ash.

## Reproducing the Issue

To observe the crash:

1. Clone this repository.
2. Ensure you are on the `main` branch.
3. Run the following commands:
   ```bash
   mix ecto.reset
   mix test
   ```
4. You will observe the test failure due to a crash caused by the nested calculation not loading properly.

## Ash 3.4.52 Behavior

To verify that the issue does not occur in Ash 3.4.52:

1. Switch to the `with-ash-3.4.52` branch:
   ```bash
   git checkout with-ash-3.4.52
   ```
2. Run the same commands:
   ```bash
   mix ecto.reset
   mix test
   ```
3. All tests will pass, confirming that this issue does not occur in Ash 3.4.52.

## Ash 3.4.53 - 3.4.55 Behavior

To confirm that the issue persists in Ash versions 3.4.53 to 3.4.55:

1. Switch to the relevant branch for each version (`with-ash-3.4.53`, `with-ash-3.4.54`, or `with-ash-3.4.55`):
   ```bash
   git checkout with-ash-3.4.53
   git checkout with-ash-3.4.54
   git checkout with-ash-3.4.55
   ```
2. Run the commands for each branch:
   ```bash
   mix ecto.reset
   mix test
   ```
3. You will observe that the tests fail in all these versions due to the same issue.

## Additional Information

This repository is structured to make it easy to isolate and test the issue. For any questions or further clarifications, feel free to open an issue or submit a pull request.

