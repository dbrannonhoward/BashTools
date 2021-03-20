from subprocess import run


class ListWrapper:
    @staticmethod
    def print_files_to_console_at_():
        event = f'listing files at cwd'
        try:  # TODO add cwd arg
            cmd, args = 'ls', ' -hl'
            sp_return = run(cmd, capture_output=True)
            assert successful_(sp_return.returncode), OSError(f'error {event}')
            output_lines = process_stdout(sp_return.stdout)
            for line in output_lines:
                print(line)
        except Exception as e_err:
            print(f'error {event}')
            for arg in e_err.args:
                print(arg)


def is_new_line_(char) -> bool:
    return True if char == '\n' else False


def process_stdout(stdout) -> list:
    event = f'processing stdout'
    try:
        stdout_lines, stdout_line = list(), list()
        stdout = stdout.decode() if isinstance(stdout, bytes) else stdout
        for char in stdout:
            if is_new_line_(char):
                stdout_lines.append(''.join(stdout_line))
                stdout_line = list()
                continue
            stdout_line.append(char)
        return stdout_lines
    except Exception as e_err:
        print(f'error {event}')
        for arg in e_err.args:
            print(arg)


def successful_(return_code) -> bool:
    return True if not return_code else False


if __name__ == '__main__':
    ls = ListWrapper()
    ls.print_files_to_console_at_()
