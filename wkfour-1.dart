void main() {
  String name = "Solomon";
  int year = 2024;

  String stateMessage = 'This is Lagos state';
  String country = 'Nigeria';

  String input = "Habari watu wangu wa Kenya! I am dreaming of having Ugali .";

  String message =
      'Hello Mr. ${name}, You are an outstanding instructor for PLP cohort ${year}!';

  print(message);

// 1.2
  print(stateMessage + ', ' + country);

// 1.3
  String reverseString(String input) {
    return input.split('').reversed.join('');
  }

  String toggleCase(String input) {
    return input.split('').map((char) {
      if (char == char.toUpperCase()) {
        return char.toLowerCase();
      } else {
        return char.toUpperCase();
      }
    }).join('');
  }

  // 1.4
  String reversed = reverseString(input);

  String toggled = toggleCase(input);

  print("Original String: $input");
  print("Reversed String: $reversed");
  print("Toggled Case String: $toggled");
}
