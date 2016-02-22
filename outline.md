- Formalize the setting, the system model:
  - A file system: read, write, append.
  - Adversary is storage node, operates file system.
  - Adversary participates as user.

I think a simple file system model like this will suffice.

- Formalize assumptions:
  - Storage node cannot tell the origin of two requests apart.
  - Eve controls the entire storage system?
    - Here she can do an exhaustive search.
  - Eve only controls part of the network?
    - Can Eve do an exhaustive search in the storage?

Assuming that Eve controls the entire storage system should be more 
interesting as it's a stronger adversary.  There shouldn't be any need 
for the weaker adversary who controls only a part of the storage system.  
We'll have to remove some randomness re-use from ANOBE for the 
implementation, but that should suffice.

- Formalize what we want to do:
  - Publisher makes a message m asynchronously available to n recipients 
    while hiding the recipient set:
    - Pull model: publish m as object o.
    - Push model: publish m as objects o_1, ..., o_n.
  - Each recipient reads m:
    - Pull model: read object o.
    - Push model: read object o_i.
  - The publisher should be unidentifiable for a non-recipient.

- Top-down approach:
  - First, analyse high-level properties in pull and push models.
    - Motivation for hidden policies, credentials, decisions.
    - Alice removes Bob from recipient set: Bob shouldn't distinguish this or 
      if Alice stopped posting to all.
    - Bob shouldn't be able to monitor Alice's activities unrelated to Bob.
    - Eve knows Alice's and Bob's inboxes, for any message m in Alice's, she 
      shouldn't be able to tell if it's also in Bob's.
  - Second, suggest an example of possible implementation using ANOBE.
  - Third, complexity for solution.

I think this disposition will make the paper less confusing.  This also 
requires a lot of formalization:

- Formalize hidden policies, credentials and decisions --- but how?
  - Hidden policies: policy-hiding ciphertext, how to formalize?
    - Given two equally-sized ciphertexts the adversary cannot tell them 
      apart?
    - What about the size of the recipient set?  Padding and dummy entries 
      should work?
    - Probably the definition in [ANOBE] can help?
    - Timing-attacks on the push model?  Alice writes n same-sized 
      objects to n places within a short timespan.  How to formalize?
  - Hidden credentials: the keys are by definition hidden, how to 
    formalize?  In identity-based access control, is the identity itself 
    the credential or whatever authenticates the identity?  Or both?
  - Hidden decisions: the adversary should not be able to guess the 
    outcome, an IND-style property.  This shouldn't be any problem to 
    turn into a security game.

I'll have to refresh my mind by looking at a few papers, to see how they 
have defined the properties.  These shouldn't be too difficult to find 
definitions for.  The following are a bit less straight-forward for me 
right now:

- Formalize other required (more high-level) properties:
  - Alice removes Bob as a friend: Bob shouldn't distinguish this or if 
    Alice stopped posting to all.
  - Bob shouldn't be able to monitor Alice's activities.
  - Eve knows Alice's and Bob's inboxes, for any message m in Alice's, 
    she shouldn't be able to tell if it's also in Bob's.

I think this should be possible to capture in one definition.  But right 
now it's a bit out of reach for me.

