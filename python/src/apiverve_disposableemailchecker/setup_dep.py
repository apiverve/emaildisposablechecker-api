from setuptools import setup, find_packages

setup(
    name='apiverve_disposableemailchecker',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Disposable Email Checker is a disposable email detection API that tests whether an email address belongs to a disposable or temp mail provider. Pass any email to receive its domain and a true or false flag showing if it is temporary.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/emaildisposablechecker?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
