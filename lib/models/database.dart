import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

class Transactions extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get jenis => text()(); // Pendapatan, Pengeluaran, Tabungan
  IntColumn get nominal => integer()();
  TextColumn get dompet => text()(); // e-wallet, cash, tabungan
  TextColumn get deskripsi => text().nullable()();
  DateTimeColumn get tanggal => dateTime()();
}

@DriftDatabase(tables: [Transactions])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Transaction>> getAllTransactions() => select(transactions).get();
  Future<int> insertTransaction(TransactionsCompanion entry) => into(transactions).insert(entry);
  Future<int> deleteTransaction(int id) => (delete(transactions)..where((t) => t.id.equals(id))).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
