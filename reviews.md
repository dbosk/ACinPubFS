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
