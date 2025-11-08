import sys
print(f"Python version: {sys.version}\n")

# Import and test all major packages
packages_to_test = [
    'numpy',
    'pandas',
    'matplotlib',
    'tensorflow',
    'sklearn'
]

for package in packages_to_test:
    try:
        module = __import__(package)
        print(f"✓ {package} {module.__version__} successfully imported")
    except ImportError as e:
        print(f"✗ {package} import failed: {str(e)}")
    except AttributeError:
        print(f"✓ {package} successfully imported (version unknown)")

print("\nAll imports completed!")