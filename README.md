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

## Additional Information

This repository is structured to make it easy to isolate and test the issue. For any questions or further clarifications, feel free to open an issue or submit a pull request.

