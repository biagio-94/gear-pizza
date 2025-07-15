import 'dart:convert';

class Option {
  final String label;
  final String value;

  Option({required this.label, required this.value});

  factory Option.fromMap(Map<String, dynamic> m) {
    return Option(
      label: m['label'] as String,
      value: m['value'] as String,
    );
  }

  Map<String, dynamic> toMap() => {
        'label': label,
        'value': value,
      };

  @override
  String toString() => 'Option(label: $label, value: $value)';
}

class Question {
  final int id;
  final String text;
  final List<Option> options;
  final int step;

  Question({
    required this.id,
    required this.text,
    required this.options,
    required this.step,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    final raw = map['options'];
    List<Option> opts;

    if (raw is String) {
      // supabase ti ha restituito una stringa JSON
      final decoded = json.decode(raw) as List<dynamic>;
      opts = decoded.map((e) {
        if (e is Map<String, dynamic>) {
          return Option.fromMap(e);
        } else if (e is Map) {
          return Option.fromMap(Map<String, dynamic>.from(e));
        } else {
          throw Exception('Formato opzione non valido: $e');
        }
      }).toList();
    } else if (raw is List) {
      // già List<dynamic>
      opts = raw.map((e) {
        if (e is Map<String, dynamic>) {
          return Option.fromMap(e);
        } else if (e is Map) {
          return Option.fromMap(Map<String, dynamic>.from(e));
        } else {
          throw Exception('Formato opzione non valido: $e');
        }
      }).toList();
    } else {
      throw Exception('Formato options non gestito: ${raw.runtimeType}');
    }

    return Question(
      id: map['id'] as int,
      text: map['text'] as String,
      options: opts,
      step: map['step'] as int,
    );
  }
}
