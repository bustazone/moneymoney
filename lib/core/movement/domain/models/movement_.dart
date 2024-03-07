import 'dart:convert';

class Movement_ {
  final String status;
  final String status1;
  final String status2; 

  Movement_({
    required this.status,
    required this.status1,
    required this.status2,
  });

  Movement_ copyWith({
    String? status,
    String? status1,
    String? status2,
  }) {
    return Movement_(
      status: status ?? this.status,
      status1: status1 ?? this.status1,
      status2: status2 ?? this.status2,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'status1': status1,
      'status2': status2,
    };
  }

  factory Movement_.fromMap(Map<String, dynamic> map) {
    return Movement_(
      status: map['status'] ?? '',
      status1: map['status1'] ?? '',
      status2: map['status2'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Movement_.fromJson(String source) => Movement_.fromMap(json.decode(source));

  @override
  String toString() => 'Movement(status: $status, status1: $status1, status2: $status2)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Movement_ &&
      other.status == status &&
      other.status1 == status1 &&
      other.status2 == status2;
  }

  @override
  int get hashCode => status.hashCode ^ status1.hashCode ^ status2.hashCode;
}
   