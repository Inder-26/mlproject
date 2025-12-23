from setuptools import setup, find_packages

setup(
    name="mlproject",
    version="0.0.1",
    author="Inderjeet Singh",
    description="End to End Machine Learning Project",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
)
