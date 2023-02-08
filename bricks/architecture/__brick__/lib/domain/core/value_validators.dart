Result<String, ValueFailure<String>> validatorExample(
  String input,
  String input2,
) {
  if (input == input2) {
    return Ok(input);
  }
  return Err(ValueFailure.example(input));
}
