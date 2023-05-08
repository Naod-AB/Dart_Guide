import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('No argument has been passed');
    exit(1);
  }
  final inputFile = args.first;
  // print(inputFile);
// try running this in the terminal by writing dart totals.dart a b c
// it will print [a,b,c]

  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};
  lines.removeAt(0);
  var totalDuration = 0.0; // to hold all hours put in

  for (var line in lines) {
    final values = line.split(',');
    final durationStr =
        values[3].replaceAll('"', ''); // change from double quate to single

    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');

    final prevTotal = totalDurationByTag[tag];
    if (prevTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = prevTotal + duration;
    }
    totalDuration += duration;
  }

  for (var entry in totalDurationByTag.entries) {
    final DurationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key != '' ? entry.key : 'Unallocated';

    print('$tag : ${DurationFormatted}h');
    // now run it from terminal
    // dart totals.dart CSVFile.csv
  }
  print('total duration for all tags is ${totalDuration.toStringAsFixed(1)}');
}

  //Pesudo code
  // lines = readFile(inputFile)
// durationByTag = empty map
// lines.removeFirst()
// for (line in lines)
//   values = line.split(',')
//   duration = values[3]
//   tag = values[5]
//   update(durationByTag[tag], duration)
// end
// printAll(durationByTag)