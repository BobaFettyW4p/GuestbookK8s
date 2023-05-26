from sqlalchemy import create_engine
from sqlalchemy.engine import URL

url_object = URL.create(
        "postgresql+pg8000",
        username='admin',
        password='BequeathedSpirit02',
        host='https://postgres',
        database='visitors'
        )

engine = create_engine(url_object)
