import sublime
import sublime_plugin

from io import StringIO
from xml.etree.ElementTree import parse


class NewXmlFileCommand(sublime_plugin.WindowCommand):
    def run(self, name, syntax_file, snippet_file):
        txt = str(sublime.load_binary_resource(snippet_file), "utf-8")
        xml = parse(StringIO(txt))
        template = xml.findtext("content")

        v = self.window.new_file()
        v.assign_syntax(syntax_file)
        v.set_name(name)
        if template:
            v.run_command("insert_snippet", {"contents": template.strip()})
