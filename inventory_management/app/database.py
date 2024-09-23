from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

SQLALCHEMY_DATABASE_URL = "postgresql://sit722week92d_user:zNH2wx7VksKHXEnTC92qc391rKDIl0rF@dpg-crndm4l6l47c73ae80j0-a.oregon-postgres.render.com/sit722week92d"

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
