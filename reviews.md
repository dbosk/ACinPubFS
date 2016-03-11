REVIEW 1
===============================================================================

The introduction does not state at any moment what the main purpose of the work 
is. This only appears in Section 5. It would be a good idea to clearly mention 
it in the introduction when the paper comes to a full paper.
The last part of the second paragraph it seems it is about to state the 
problem  but it is hard to understand.

Also, section 5 should state clearly how the authors’ contribution
improve the original work of ANOBE.

There are a few typos that need to be corrected.


REVIEW 2:
===============================================================================

Clearly describe

    i) what is the concrete setting that you are considering, i.e., which 
    entities exist in the system and what are their properties,

    ii) what are the overall functional and security properties you want to 
    achieve

    iii) how are those properties realized, which protocols do you use and how 
    are they composed.

Try not to mix those three categories. Ideally, the setting and aimed 
properties should not include descriptions of the concrete solution (which is 
the case in the abstract, e.g., the system model speaks about deploying 
signature schemes to detect changes of the user documents.)

Clearly describe the problem you want to solve before describing
the actual solution. Make sure the different parts fit together, i.e., the
solution indeed covers the cases outlined in the system & problem 
description.
In fact, in the abstract the connection of the outlined system model, the
problem statement and the description of anonymous broadcast encryption was 
not always clear to me. E.g., in Section 2 it is said that every object has 
a unique name, and only users knowing that unique (and secret?) object name 
can read that object. In Section 3, it is then argued that the 
hidden-credential property is trivially achieved, as the user's secret key 
serves as credential and all users knowing the object name can read it. So 
where does the key come from, does the key identify the user and why is it 
needed if the unique object name seems to be the access-requirement?
In Section 4.1 a key k is then distributed to the users to decrypt the data.  
But how is that done? I.e., what are the set-up assumptions for the system 
and how does the user actually get the encrypted data? For a social network, 
broadcasting all user activities might not be very realistic.

Also be somewhat careful with statements of trivially achieved properties.  For
instance the hidden-decision property is claimed to be trivial too, as the user
only requests ciphertexts from the storage provider, but the provider does not
learn whether the user can decrypt them or not.
However, if in the overall system the user only downloads the data he can 
actually decrypt, this claim does not hold.

Suggested papers
-------------------------------------------------------------------------------

"Outsider-Anonymous Broadcast Encryption with Sublinear Ciphertexts"
Nelly Fazio, Irippuge Milinda Perera


REVIEW 3:
===============================================================================

The paper describes a privacy-preserving data sharing system where users
can store (encrypted) data in a distributed manner yet enforce strong
access control. The later is done in an anonymous way such that the node
hosting the (encrypted) data should not learn who is allowed to fully
access the content.

Roughly, the idea is to use anonymous broadcast encryption (ANOBE) which
allows to encrypt data for a set of users such that the ciphertext
does not leak any information about the intended receivers. In the
envisaged scheme, a user that wants to publish some data encrypts it
under a fresh key k and then encrypts k for all eligible readers using
the ANOBE scheme. How the encrypted data and wrapped key is transmitted
to the intended users depends on whether the pull or push mode is used.

The desired (informal) security properties are briefly discussed, but
unfortunately, neither a formal security notion nor proof is given. The
informal security properties also rely on system properties that are
hardly described, such as where the encrypted data is stored and how the
user retrieve that data. While the beginning of the paper introduces the
entity of decentralised storage nodes those don't appear in the actual
description where it is simply said that the ciphertexts are stored
"somewhere in the storage system". So I'm not sure how important the
aspect of decentralization is for the solution.

From an editorial point, the readability of the paper could be greatly
improved by providing a clear separation of the considered setting, goal,
building blocks and solution. For instance, Section 2 (Hidden Policies,
Credentials) and  Section 3 (System Model) are both a similar mix of
informal security properties, introduction of entities and sketched
solutions for some of the properties. For the ANOBE building block some
encryption and decryption algorithms are introduced where it is not clear
though, whether this is a generic ANOBE procedure or a concrete and new
construction proposed by the authors. If its the latter, then one would
also have to prove that the proposed construction is indeed a secure
ANOBE scheme, as those abstract properties are used in the high-level
security discussion.

Thus, while the topic of the paper is certainly interesting, I lean
towards rejection given the confusing presentation and the lack of a
proper security analysis.


REVIEW 4:
===============================================================================

The paper describes a storage system based on anonymous broadcast
encryption.  This could be an interesting paper but unfortunately, the
write up is a mess (sorry to be so blunt), unfortunately.  To accept
this in the proceeding a serious rewrite needs to be done. See comments.

Section 2.  This is a way to informal discussion of the security
requirements. While the requirements seem to be named, it is does not
become clear which are the requirements. Neither does it become clear
what the different operations of the system are. The section starts
off well be listening the involved parties, but then the algorithms or
protocol of the system should be stated, in the best case with input and
output specification.  Then a *list* of the requirements should be given
(e.g., the following x requirements must be met), followed by a definition
(even informal)  what the requirements are, and then the requirements
can be discussed.

Section 3. How does this relate to section 2? It seems to be the
infrastructure requirements and some kind of architecture that uses the
scheme of section 5.

Section 4. The title seems to indicate that you introduces the necessary
cryptographic primitive that you built your scheme form. However, you
only discuss anonymous broadcast encryption. So the section should be
renamed and section 3.2 integrated in the intro of the section. Then,
when you introduce broadcast encryption it is not clear whether this
is your own scheme, or one from the literature.  Further, the security
requirements of AONBE are not discussed. Aslo what kind of decryption
algorithm do you require? Linear of with tags?  The algorithm you give
does not cater for tags. How is this defined.

Section 5. After having read section 4, one would expect that you actually
use the algorithms introduced in section 4, but now, you use an other
encryption scheme, then authenticated encryption (both of which you
do not introduce in section 3), so why did you bother to write section
4?? What kind of encryption scheme do you need one that is secure against
chosen ciphertext security? What kind of signature scheme?  The security
discussion would benefit from a better section 2 so you could address
each requirement one by one in a structured fashion.

In section 5.3. Suddenly you want to remove non-repudiation with MAC? Is
this a new requirement?  Is it crucial? You just mention this here
in passing.


FEEDBACK
===============================================================================

I appreciate that you aim at a formal security notion and consider the UC
framework. I'm not sure, though, whether this is feasible in the given time
frame. Working out an ideal functionality in the UC framework usually takes
weeks (even with quite some experience), and requires a lot of finetuning that
becomes only apparent when working out the detailed proof. Also the security
proof is very different from a "normal" proof, and requires a lot of work as
well.

Further, aiming at a UC-secure version usually also impacts the construction
and comes with a significant "penalty" in terms of efficiency, as one has to
make a lot of things extractable and let the protocol contain proves of
correctnes of all steps. (Our work on the distributed password protocol was
very exceptional in that context, as we could leverage some very strong - yet
unavoidable assumptions to avoid the usual overhead and ZKPs).

So, I'd actually recommmend not to go for UC security, as I think this would
basically be a paper on its own and require 1-2 months of work at least. What
you could do though is to define things on a semi-formal basis by describing a
rough ideal world behaviour (but not fully compliant with the UC framework).
Property-based or informal definitions are also ok ... it should simply allow
the reader to understand which properties are guaranteed, and what are the
considered capabilities of the adversary.

Looking at the draft that you sent earlier I would also recommend to make
clear what is a security/functional definition and what is the concrete
construction. Ideally, the security/functional definition should not make any
assumptions or usage of concrete building blocks but rather describe the
desired behaviour in abstract terms.

In the DecentAC-paper.pdf in Section 3.1 and 3.2 you introduce a "definition
of the push/pull model". From that title I would expect a generic definition
of the model, but it seems that the definition is rather the concrete
construction that you propose. So, having a clear seperation of a) the desired
functional and security properties b) the necessary building blocks and c) the
concrete construction, would be very helpful for the reader.

I think the strengths of your paper is that you look at an interesting
application and propose modular constructions based on ANOBE and other
cryptographic primitives. I'd focus on presenting that contribution in a clear
and structured manner.
