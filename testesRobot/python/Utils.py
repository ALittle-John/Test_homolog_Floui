import pyperclip

class Utils:
    """Common utilities for Floui Projects."""
    def get_from_clipboard(self):
        return pyperclip.paste()
    
    def get_var_from_env_file(self, key):
        try:
            with open('.env', 'r') as f:
                for line in f:
                    if line.startswith(key):
                        return line.replace(key + '=', '').replace('\n', '')
        except:
            raise FileNotFoundError('File .env not found!')