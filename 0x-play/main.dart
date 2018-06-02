void main() {

  assert(say('Bob', 'Howdy') ==
    'Bob says Howdy with a carrier pigeon');
}

String say(String from, String msg, [String device = 'carrier pigeon', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}