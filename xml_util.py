from pathlib import Path
import xml.etree.ElementTree as XmlTree
from xml.dom import minidom

def read_xml_file(file_path:Path, tag:str=None):
  xml_tree = XmlTree.parse(str(file_path))
  xml_root = xml_tree.getroot()
  if tag:
    assert xml_root.tag==tag, f'tag mismatch {xml_root.tag}'
  return xml_root

def convert_xml_to_text(xml_root):
  xml_str = XmlTree.tostring(xml_root, encoding="unicode")
  xml_str = minidom.parseString(xml_str).toprettyxml(indent="\t")
  return xml_str
