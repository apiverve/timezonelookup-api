from setuptools import setup, find_packages

setup(
    name='apiverve_timezonelookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Timezone Lookup resolves any city or IANA zone name to its local time, UTC offset, and calendar date. Responses include 12-hour and 24-hour clocks plus the minute offset from GMT.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/timezonelookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
