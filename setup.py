from setuptools import find_packages, setup


def read(filename):
    return [req.strip() for req in open(filename).readlines()]


setup(
    name="stock-trader",
    version="0.1.0",
    description="AWS quick start application template",
    packages=find_packages(),
    include_package_data=True,
    install_requires=read("requirements.txt"),
    setup_requires=["pytest-runner"],
    tests_require=["pytest", "pytest-cov"],
    python_requires=">=3.6",
)
