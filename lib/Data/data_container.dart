const String DATABASE_NAME = 'trip_db';

const String PERFIL_TABLE_NAME = 'perfil';
const String PERFIL_COLUMN_ID = 'perfilID';
const String PERFIL_COLUMN_NOME = 'nome';
const String PERFIL_COLUMN_EMAIL = 'email';
const String PERFIL_COLUMN_SENHA = 'senha';

const String CREATE_PERFIL_TABLE_SCRIPT = '''
CREATE TABLE $PERFIL_TABLE_NAME(
  $PERFIL_COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,
  $PERFIL_COLUMN_NOME TEXT.
  $PERFIL_COLUMN_EMAIL TEXT,
  $PERFIL_COLUMN_SENHA TEXT
)
''';