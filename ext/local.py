from docutils import nodes
from docutils.parsers import rst
from sphinx.domains import Domain
import os.path

# This is a place to hang git file references.
class TrafficServerDomain(Domain):
    """
    Traffic Server.
    """

    name = 'ts'
    label = 'Traffic Server'
    data_version = 1

# These types are ignored as missing references for the C++ domain.
# We really need to do better with this. Editing this file for each of
# these is already getting silly.
EXTERNAL_TYPES = set(('bool', 'int', 'uint', 'size_t'
))

def xref_cleanup(app, env, node, contnode):
    rdomain = node['refdomain']
    rtype = node['reftype']
    rtarget = node['reftarget']
    if ('cpp' == rdomain) or ('c' == rdomain):
        if 'type' == rtype:
            # one of the predefined type, or a pointer or reference to it.
            if (rtarget in EXTERNAL_TYPES) or (('*' == rtarget[-1] or '&' == rtarget[-1]) and rtarget[:-1] in EXTERNAL_TYPES):
                node = nodes.literal()
                node += contnode
                return node
            elif rtarget == 'Args' :
                node = nodes.strong()
                node += contnode
                return node
    return

def make_github_link(name, rawtext, text, lineno, inliner, options={}, content=[]):
    """
    This docutils role lets us link to source code via the handy :swoc:git: markup.
    """
    url = 'https://github.com/apache/trafficserver/blob/{}/{}'
    ref = 'master'
    node = nodes.reference(rawtext, os.path.basename(text), refuri=url.format(ref, text), **options)
    return [node], []

def setup(app):
    rst.roles.register_generic_role('arg', nodes.emphasis)
    rst.roles.register_generic_role('const', nodes.literal)
    rst.roles.register_generic_role('pack', nodes.strong)
    app.connect('missing-reference', xref_cleanup)

    app.add_domain(TrafficServerDomain)

    # this lets us do :ts:git:`<file_path>` and link to the file on github
    app.add_role_to_domain('ts', 'git', make_github_link)

