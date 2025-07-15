/// Represents the MirinoRecognition output from the model.
class MirinoRecognition {
  /// Index of the result.
  final int id;

  /// Label of the result.
  final String label;

  /// Confidence score between [0.0, 1.0].
  final double score;

  /// Size of the model's input for inference (e.g., 512 for 512x512 images).
  static const int modelInputSize = 512;

  MirinoRecognition(this.id, this.label, this.score);

  @override
  String toString() {
    return 'MirinoRecognition(id: $id, label: $label, score: $score)';
  }
}
