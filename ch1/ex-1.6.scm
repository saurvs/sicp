#|
Since the Scheme we follow uses applicative-order evalutation,
the arguments to new-if would be evaluated before the procedure
definition is substituted, which would lead to an infinite
recursive loop with sqrt-iter calling itself before guess is
tested to be good enough.
|#
